require 'active_record/fixtures'

class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
   		t.string :name, :null => false, :limit => 1000
			t.text :description, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end

