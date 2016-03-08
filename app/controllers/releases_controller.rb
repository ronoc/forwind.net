class ReleasesController < ApplicationController
  layout 'music'

  def index
    @releases = []
    @releases << Release.find_by_cat('FWD14')
    @releases << Release.find_by_cat('FWD13')
    @releases << Release.find_by_cat('FWD12')
    @releases << Release.find_by_cat('FWD11')
    @releases << Release.find_by_cat('FWD10')
    @releases << Release.find_by_cat('FWD09')
    @releases << Release.find_by_cat('FWD08')
    @releases << Release.find_by_cat('FWD07')
    @releases << Release.find_by_cat('FWD06')
    @releases << Release.find_by_cat('FWD05')
    @releases << Release.find_by_cat('FWD04')
    @releases << Release.find_by_cat('FWD03')
    @releases << Release.find_by_cat('FWD02')
    @releases << Release.find_by_cat('FWD01')
    @releases << Release.find_by_cat('FWD00')
    render layout: 'home'
  end

  def current
    @release = Release.find_by_cat('FWD12')
    set_sharing_details(share_text(), "http://www.forwind.net/releases/" + @release.cat.downcase, @release.title)
    render :show
  end

  def share_text
    unless @release
      return ""
    end
    @release.artist.name + " | " + @release.title + " | " + @release.cat
  end

	def show
    params[:id] = params[:id].upcase

    @release ||= Release.find_by_cat(params[:id])
    unless @release
      @release = Release.find(params[:id])
    end
    set_sharing_details(share_text(), "http://www.forwind.net/releases/" + @release.cat.downcase, @release.title)
	end

  def context
    @context = params[:controller].upcase
    @item = params[:id].nil? ? "FWD01" : params[:id].upcase
  end

end
