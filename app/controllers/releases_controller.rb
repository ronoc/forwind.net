class ReleasesController < ApplicationController
  layout 'base'

  def index
    releaseCats = $redis.lrange("releases", 0, $redis.llen("releases")-1)
    @releases = [];
    releaseCats.each do |cat|
      release = Release.find_by_cat(cat.upcase)
      if(release)
        @releases << release
      end
    end
    render layout: 'base'
  end

  def current
    redirect_to action: "show", id: $redis.get("currentRelease")
  end

  def share_text
    unless @release
      return ""
    end
    artists = @release.artists.map{|artist| artist.name}.join("|")
    artists + " | " + @release.title + " | " + @release.cat
  end

	def show
    params[:id] = params[:id].upcase

    @release ||= Release.find_by_cat(params[:id])
    unless @release
      @release = Release.find(params[:id])
    end
	end

  def context
    @context = params[:controller].upcase
    @item = params[:id].nil? ? "FWD01" : params[:id].upcase
  end

end
