class AddAvailableFlagToRelease < ActiveRecord::Migration
  def self.up
    add_column :releases, :available, :boolean, :default => true    
  end

  def self.down
    remove_column :available
  end
end
