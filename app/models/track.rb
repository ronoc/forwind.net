class Track < ActiveRecord::Base
  belongs_to :track_list, :class_name => "TrackList"
end
