class Track 
  include ActiveModel::Model
  belongs_to :track_list, :class_name => "TrackList"
end
