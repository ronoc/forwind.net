require 'active_record/fixtures'

class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
   		t.string :name, :null => false, :limit => 1000
			t.string :description, :null => false
      t.timestamps
    end
		Fixtures.create_fixtures('test/fixtures', File.basename("artists.yml", '.*'))
  end

  def self.down
    drop_table :artists
  end
end

