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

	def show
	  check_params
    if params[:id].to_i.to_s != "0"
      @release = Release.find(params[:id])
    end
		@release ||= Release.find_by_cat(params[:id])
          

	end

  def context
    @context = params[:controller].upcase
    @item = params[:id].nil? ? "FWD01" : params[:id].upcase
  end

  def check_params
    if params[:id] == "cjc"
      params[:id] = "FWD00"
    elsif params[:id] == "sonnamble"
      params[:id] = "FWD01"
    end
    params[:id] = params[:id].upcase
  end
end
