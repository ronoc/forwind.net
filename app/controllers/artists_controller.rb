class ArtistsController < ApplicationController
  layout 'music'

  def index
    @artists = []
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
    if params[:id].to_i.to_s != "0"
      @artist = Artist.find(params[:id])
    elsif params[:id] == "JamesOSullivan" or params[:id] == "jamesosullivan"
      search_query = "James O'Sullivan"
    elsif params[:id] == "Elvers"
      search_query = "Elvers"
    elsif params[:id] == 'cjc' or params[:id] == "Cjc" or params[:id] == 'CjC'
      search_query = 'CjC'
    elsif params[:id] == 'Clang Sayne' or params[:id] == 'ClangSayne'
      search_query = 'Clang Sayne'
    elsif params[:id] == 'Sonnamble'
      search_query = 'Sonnamble'
    elsif params[:id] == 'fourth page' or params[:id] == 'FourthPage'
      search_query = 'fourth page'
    elsif params[:id] == 'Tomonari Nozaki' or params[:id] == 'TomonariNozaki'
      search_query = 'Tomonari Nozaki'
    else
      search_query = params[:id].capitalize
    end
    @artist ||= Artist.find_by_name(search_query)
    puts "artist name = " + @artist.name
  end

end
