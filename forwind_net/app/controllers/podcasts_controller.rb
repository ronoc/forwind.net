class PodcastsController < ApplicationController
  layout 'music'

  def index
    @podcasts = Podcast.find :all
    @podcast = @podcasts.sort_by{|x| x.created_at }.last
    @podcasts.reverse!
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @podcasts }
			format.atom { render :atom => @podcasts }
    end
  end
    
  def show
    if params[:id] == "current"
      redirect_to current
    end
    @podcast ||= Podcast.find(params[:id])
    @podcasts ||= Podcast.find :all
  end

  def current
    @podcasts = Podcast.find :all
    @podcast = Podcast.last
  end
    
end
