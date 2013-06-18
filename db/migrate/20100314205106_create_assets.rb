require 'active_record/fixtures'

class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
   		t.integer :piece_id, :null => false
   		t.integer :medium, :null => false
  		t.string :title, :null => false
			t.string :description
		  t.string :location
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end

