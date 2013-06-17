require 'active_record/fixtures'

class CreatePodcasts < ActiveRecord::Migration
  def self.up
    create_table :podcasts do |t|
      t.string :title, :null => false
      t.integer :artist_id, :null => false      
      t.string :file_name, :null => false
      t.boolean :available, :default => false
      t.string :genre, :null => false
      t.string :cat_no, :null => false      
      t.integer :duration, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :podcasts
  end
end
