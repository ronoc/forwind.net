class PodcastsController < ApplicationController
  layout 'home'

  def index
    @podcasts = Podcast.all
    @podcasts = @podcasts.sort_by{|x| x.created_at }
    @podcast = @podcasts.last
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

  def share_text
    unless @podcast
      return ""
    end
    "Forwind | Podcasts | " + @podcast.title
  end

end
