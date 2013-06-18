require 'active_record/fixtures'

class CreateTrackLists < ActiveRecord::Migration
  def self.up
    create_table :track_lists do |t|
      t.integer :podcast_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :track_lists
  end
end
