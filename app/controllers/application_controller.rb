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
					#@message = "It looks as if you are using some sort of Microsoft browser. If my naive browser detection method has mistakenly recognized an IE type browser well then my apologies, my email is at the end of this notice (I do intend to make it cross browser compatible sometime when time permits whenever that will be :).
#<p>
#But if in fact you are using IE well I'm afraid this site does not work on Microsoft browsers due to their non standard handling of CSS. You should really use Firefox, Safari or Opera. Sometime soon I will hopefully get this site to work on all browsers. "
			#render :partial => 'shared/bomb', :layout=>false
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
    @s3_root = "https://s3-eu-west-1.amazonaws.com/forwind-images/"
  end

end

