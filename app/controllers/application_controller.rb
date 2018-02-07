class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  #session :session_key => '_forwind_session_id'
  layout 'default'
  before_action :set_up

  helper_method :current_user

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def set_sharing_details(text, link, title_subtext)
    @share_details = {:text => text, :link => link, :title_subtext => title_subtext}
  end

  def title(ttl)
    @page_title = ttl
  end

  def set_up
    @s3_images = "https://s3-eu-west-1.amazonaws.com/forwind-images/"
    @context = "Publishing"
  end

end

