# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def unique_shuffle(quantity)
    values = []
    1.upto(quantity){|x| values << x}
    result = []
    while result.size < quantity do
      result << rand(quantity) + 1
      result.uniq!
    end
    result
  end
  
  def not_in_context(ctrl, id = nil, action = nil)
    if action == nil and id == nil
      return !(params[:controller] == ctrl)  
    elsif id == nil 
      return !(params[:controller] == ctrl and params[:action] == action)
    end
    return true
  end

  def home_link
    if params[:controller]  != 'home'
      return "<span id='small_white_txt'>/ </span><span id='ct_links'><a href='/home'>HOME</a></span>"
    end
    return ''
  end

  def is_active?(link_path)
    current_page?(link_path) ? "active" : ""
   end

  def is_feedable?
    return params[:controller] == "podcasts"    
  end

  def track_duration(audio_asset)
    mins_value = audio_asset.length % 60
    minutes = mins_value.to_s
    if mins_value < 10
      minutes = '0' + minutes
    end
    return (audio_asset.length/60).to_s + ':' + minutes
  end
end

