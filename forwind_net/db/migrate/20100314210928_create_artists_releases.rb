require 'active_record/fixtures'

class CreateArtistsReleases < ActiveRecord::Migration
    def self.up
      create_table :artists_releases, :id => false do |t|
      t.integer :artist_id
      t.integer :release_id
      end
      Fixtures.create_fixtures('test/fixtures', File.basename("artists_releases.yml", '.*'))
    end

    def self.down
      drop_table :artists_releases
    end
  end

