class Podcast < ActiveRecord::Base 
  include ActiveModel::Model
  has_one :track_list, :class_name => "TrackList"
  belongs_to :artist
end
