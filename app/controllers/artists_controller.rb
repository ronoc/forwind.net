class ArtistsController < ApplicationController
  layout 'home'

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
    render layout: 'home'
  end

  def share_text
    unless @artist
      return ""
    end
    "Forwind | Artists | " + @artist.name
  end

  def show
    @artist = Artist.find_by_slug(params[:id].downcase)
    set_sharing_details(share_text(), "http://www.forwind.net/artists/" + @artist.slug, @artist.name)
  end
end
