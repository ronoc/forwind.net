require 'active_record/fixtures'

class CreateTrackLists < ActiveRecord::Migration
  def self.up
    create_table :track_lists do |t|
      t.integer :podcast_id, :null => false
      t.timestamps
    end
		Fixtures.create_fixtures('test/fixtures', File.basename("track_lists.yml", '.*'))
  end

  def self.down
    drop_table :track_lists
  end
end
