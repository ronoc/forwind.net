class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  #session :session_key => '_forwind_session_id'
  layout 'default'
  before_action :set_up

  def title(ttl)
    @page_title = ttl
  end

  def set_up
    @s3_images = "https://s3-eu-west-1.amazonaws.com/forwind-images/"
    @context = "Publishing"
  end

end

