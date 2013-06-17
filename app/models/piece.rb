class Piece < ActiveRecord::Base
  belongs_to :release
  belongs_to :artist
  has_many :assets


  def artist
    artists.first
  end

end

