require 'active_record/fixtures'

class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.string :title, :null => false
			t.string :long_desc, :limit => 1000
			t.datetime :release_date
			t.string :short_desc, :null => false
      t.string :cat, :null => false
    end
		Fixtures.create_fixtures('test/fixtures', File.basename("releases.yml", '.*'))
  end

  def self.down
    drop_table :releases
  end
end

