class PodcastsController < ApplicationController
  layout 'music'

  def index
    @podcasts = Podcast.find :all
    @podcast = @podcasts.sort_by{|x| x.created_at }.last
    @podcasts.reverse!

    respond_to do |format|
      format.html { render :layout => 'home'}
      format.xml  { render :xml => @podcasts }
			format.atom { render :atom => @podcasts }
    end
  end
    
  def show
    @podcast ||= Podcast.find(params[:id])
  end

  def current
    @podcast = Podcast.last
    render :show
  end
    
end
