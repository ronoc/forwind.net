require 'json'
require 'net/http'

module ReleasesHelper

  def tracklistings(release)
    optimal = 8
    musicbrainz = "http://musicbrainz.org/ws/2/release/#{release.mb_id}?inc=recordings&fmt=json"
    response = Net::HTTP.get_response(URI.parse(musicbrainz))
    if(response.code.match(/5|4[0-9]{2}/))
      # Musicbrainz's JSON API is sometimes down, let's use our S3 backup
      puts "let's use our S3 backup, musicbrainz JSON api is not at all stable yet."
      musicbrainz = "https://s3-eu-west-1.amazonaws.com/forwind-backups/releases/#{release.cat}.json"
      response = Net::HTTP.get_response(URI.parse(musicbrainz))
    end
    releases = []
    payload = JSON.parse(response.body)["media"][0]["tracks"]
    payload.each do |t|
      release = {}
      release["title"] = t["title"]
      unless t["number"].length == 2
        release["number"] = t["number"].rjust(2, '0')
      else
        release["number"] = t["number"]
      end
      release["length"] = Time.at(t["length"]/1000).utc.strftime("%M:%S")
      releases << release
    end
    delta = (optimal - releases.length) - 2
    if(delta > 0)
      (0..delta).each do |c|
        releases << "break"
      end
    end
    releases
  end

  def title_formatted(title)
    words = title.split(" ")
    words.join("  |  ")
  end

  def active_piece_link?(piece)
    params[:id].to_i != piece.id
  end

  def active_rel_link?(rel)
    release = Release.find_by_cat(params[:id])
    if release.nil?
      return true
    end
    release.title != rel.title
  end

end

