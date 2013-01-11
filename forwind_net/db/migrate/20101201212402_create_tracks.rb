require 'active_record/fixtures'

class CreateTracks < ActiveRecord::Migration
  def self.up
    create_table :tracks do |t|
      t.integer :track_list_id, :null => false
      t.string :artist_title, :null => false
      t.string :label
      t.integer :position
      t.timestamps
    end
		Fixtures.create_fixtures('test/fixtures', File.basename("tracks.yml", '.*'))
  end

  def self.down
    drop_table :tracks
  end
end
