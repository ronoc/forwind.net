class TrackList < ActiveRecord::Base
  has_many :tracks
  belongs_to :podcast
end

