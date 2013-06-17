require 'active_record/fixtures'

class CreateArtistsReleases < ActiveRecord::Migration
    def self.up
      create_table :artists_releases, :id => false do |t|
      t.integer :artist_id
      t.integer :release_id
      end
    end

    def self.down
      drop_table :artists_releases
    end
  end

