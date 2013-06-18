class MusicController < ApplicationController

  def sonnamble
    redirect_to :controller => "releases", :action => "show", :id => "FWD01"
  end

  def cjc
    redirect_to :controller => "releases", :action => "show", :id => "FWD02"
  end

end

