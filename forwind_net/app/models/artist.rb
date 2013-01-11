class Artist < ActiveRecord::Base
  has_many :releases
  has_many :links
end

