class News < ActiveRecord::Base
  has_and_belongs_to_many :images

  def slug
    return @title.gsub(/(\s|\.|\')*/, '')
  end
  
end