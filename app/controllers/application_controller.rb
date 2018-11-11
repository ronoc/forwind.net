class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  #session :session_key => '_forwind_session_id'
  layout 'default'
  before_action :set_up

  def set_up
    @s3_images = "https://s3-eu-west-1.amazonaws.com/forwind-images/"
    @s3_images_new =  "https://s3-eu-west-1.amazonaws.com/forwind-net-images/"
    @release_images_path = "https://s3-eu-west-1.amazonaws.com/forwind-net-images/releases"
  end

end

