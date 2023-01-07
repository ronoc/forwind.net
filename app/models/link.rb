class Link < ActiveRecord::Base
  include ActiveModel::Model
  belongs_to :artist
end
