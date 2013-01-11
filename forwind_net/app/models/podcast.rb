class Podcast < ActiveRecord::Base
  has_one :track_list, :class_name => "TrackList"
  belongs_to :artist
end
