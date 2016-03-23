class PodcastsController < ApplicationController
  layout 'home'

  def index
    @podcasts = Podcast.find :all
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
    set_sharing_details(share_text(), "http://www.forwind.net/podcasts/" + @podcast.id.to_s, @podcast.title)
  end

  def current
    @podcast = Podcast.last
    set_sharing_details(share_text(), "http://www.forwind.net/podcasts/" + @podcast.id.to_s, @podcast.title)
    render :show
  end

  def share_text
    unless @podcast
      return ""
    end
    "Forwind | Podcasts | " + @podcast.title
  end

end
