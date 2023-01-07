class TrackList
  include ActiveModel::Model
  has_many :tracks
  belongs_to :podcast
end

