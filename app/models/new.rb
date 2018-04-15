class New < ActiveRecord::Base
  has_many :image_link

  def slug
    return @title.gsub(/(\s|\.|\')*/, '')
  end
  
end