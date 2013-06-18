class CreateBuyLinks < ActiveRecord::Migration
  def self.up
    create_table :buy_links do |t|
      t.string :location, :null => false
      t.integer :release_id, :null => false
      t.string :vendor, :null => false
      t.boolean :medium, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :buy_links
  end
end
