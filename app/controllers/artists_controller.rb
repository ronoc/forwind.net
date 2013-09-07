class ArtistsController < ApplicationController
  layout 'music'

  def index
    @artists = []
    @artists << Artist.find_by_name("Atom Eye")    
    @artists << Artist.find_by_name("Jeff Carey")
    @artists << Artist.find_by_name("Tomonari Nozaki")
    @artists << Artist.find_by_name("Dentistry")
    @artists << Artist.find_by_name("fourth page")
    @artists << Artist.find_by_name("James O'Sullivan")
    @artists << Artist.find_by_name("Clang Sayne")
    @artists << Artist.find_by_name("Elvers")
    @artists << Artist.find_by_name("Sonnamble")
    @artists << Artist.find_by_name("CjC")
  end

  def show
    @artist = Artist.find_by_slug(params[:id])
  end
end
