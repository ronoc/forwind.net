class PiecesController < ApplicationController
  layout 'pieces'
  helper :releases
  before_filter :set_up

	def show
		@piece ||= Piece.find(params[:id])
		if @piece.title == "Portrait Sonification"
		  @vimeo_id = 7451399
		  render :action => "portrait_sonification"
    elsif @piece.title == "Graph Theory"
      render :action => "graph_theory"
  elsif @piece.title == "Sehnsucht"
      @vimeo_id = 9613609
      render :action => "sehnsucht"
    end
	end


  def set_up
    if @releases != nil
      @releases
    end
		rels ||= Release.find(:all)
		@releases =  []
		@releases << rels[1]
		@releases << rels[3]
		@releases << rels[0]
		@releases << rels[2]
  end

  def context
    piece = Piece.find(params[:id])
    release = piece.release.cat
    @context = piece.release.cat
    @item = params[:id].to_s
  end


end

