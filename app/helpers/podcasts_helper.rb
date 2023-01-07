module PodcastsHelper

  def podcast_content(podcast)
    result = "<div xmlns='http://www.w3.org/1999/xhtml'><h1>Track Listing</h1><ul>"
    podcast.track_list.tracks.sort_by { |tr| tr.position }.each do |t|
      result += "<li>#{ (t.position + 1).to_s + ' - ' + t.artist_title + "--" + t.label}</li>"
    end
    result += "</ul></div>"
    result
  end
end
