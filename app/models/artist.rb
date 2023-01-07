class Artist < ActiveRecord::Base
  include ActiveModel::Model
  has_and_belongs_to_many :releases
  has_many :links
end

