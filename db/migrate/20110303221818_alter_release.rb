class AlterRelease < ActiveRecord::Migration
  def self.up
    add_column :releases, :artist_id, :integer    
  end

  def self.down
    remove_column :artist_id
  end
end
