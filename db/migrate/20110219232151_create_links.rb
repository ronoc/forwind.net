class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :artist_id
      t.string :location, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
