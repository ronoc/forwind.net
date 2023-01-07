class News 
  include ActiveModel::Model
  has_and_belongs_to_many :images
end