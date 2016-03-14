require 'json'
require 'net/http'

module ReleasesHelper

  def cjc_form
    Album.find(:first)
  end

  def tracklistings(release)
    optimal = 8
    musicbrainz = "http://musicbrainz.org/ws/2/release/#{release.mb_id}?inc=recordings&fmt=json"
    response = Net::HTTP.get_response(URI.parse(musicbrainz))
    if(response.code.match(/5|4[0-9]{2}/))
      # Musicbrainz's JSON API is sometimes down, let's use our S3 backup
      puts "let's use our S3 backup"
      musicbrainz = "https://s3-eu-west-1.amazonaws.com/forwind-backups/releases/#{release.cat}.json"
      puts musicbrainz
      response = Net::HTTP.get_response(URI.parse(musicbrainz))
      puts response.body
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

  def small_releases_image(release)
    release.cat.downcase + '_sm.png'
  end

  def cjc
    Artist.find(:first)
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

   def vimeo_embed(id, width=725, height=(width*9/16))
    <<-TAG
    <object width="#{width}" height="#{height}" style="background-color:#000000">
      <param name="allowfullscreen" value="true" />
      <param name="allowscriptaccess" value="always" />
      <param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=#{id}&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" />
      <embed src="http://vimeo.com/moogaloop.swf?clip_id=#{id}&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="#{width}" height="#{height}"/></object>
    TAG
  end
end

