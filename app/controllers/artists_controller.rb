class ArtistsController < ApplicationController
  layout 'base'
  before_action :context

  def index
    artistNames = $redis.lrange("artists", 0, $redis.llen("artists")-1)
    @artists = [];
    artistNames.each do |name|
      artist = Artist.find_by_slug(name)
      if(artist)
        @artists << artist
      end
    end
  end

  def show
    @artist = Artist.find_by_slug(params[:id].downcase)
  end

  def context
    @context = params[:controller].downcase
  end    

end
