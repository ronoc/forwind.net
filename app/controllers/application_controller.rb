class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  #session :session_key => '_forwind_session_id'
  layout 'default'
  before_filter :context, :child, :set_up

  helper_method :current_user

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
  def set_sharing_details(text, link, title_subtext)
    @share_details = {:text => text, :link => link, :title_subtext => title_subtext}
  end

  def title(ttl)
    @page_title = ttl
  end

  def require_user
    return true
  end

  def context
    @context = params[:controller].upcase
    @item = params[:action].upcase
  end

  def child
    @child = params[:action].upcase
  end

	def detect_ie
		@use_ie_warning = false
		if request.user_agent.include?('MSIE')
			@use_ie_warning = true
		end
	end

  def set_up
    unless @releases.nil?
      @releases
    end
		rels ||= Release.find(:all)
		@releases =  []
		@releases << rels[1]
		@releases << rels[2]
		@releases << rels[0]
		@releases
    @s3_images = "https://s3-eu-west-1.amazonaws.com/forwind-images/"
  end

end

