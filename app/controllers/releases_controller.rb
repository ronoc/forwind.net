class ReleasesController < ApplicationController
  layout 'music'
  
  def index
    @releases = []
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
  end

  def current
    @release = Release.find :last
    render :show
  end

	def show
    params[:id] = params[:id].upcase
    @release ||= Release.find_by_cat(params[:id])
    unless @release
      @release = Release.find(params[:id])
      puts 'params id = ' + params[:id].to_s
    end
	end

  def context
    @context = params[:controller].upcase
    @item = params[:id].nil? ? "FWD01" : params[:id].upcase
  end

end
