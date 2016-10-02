class ArtistsController < ApplicationController
  layout 'home'

  def index
    artistNames = $redis.lrange("artists", 0, $redis.llen("artists")-1)
    @artists = [];
    artistNames.each do |name|
      artist = Artist.find_by_slug(name)
      if(artist)
        @artists << artist
      end
    end
    render layout: 'home'
  end

  def share_text
    unless @artist
      return ""
    end
    "Forwind | Artists | " + @artist.name
  end

  def show
    @artist = Artist.find_by_slug(params[:id].downcase)
    set_sharing_details(share_text(), "http://www.forwind.net/artists/" + @artist.slug, @artist.name)
  end
end
