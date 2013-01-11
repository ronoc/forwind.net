class AlterBuyLinks < ActiveRecord::Migration

  def self.up
    remove_column :buy_links, :medium
    add_column :buy_links, :link_type, :integer
    rename_table :buy_links, :release_links
  end

  def self.down
    rename_table :release_links, :buy_links
    add_column :buy_links, :medium, :boolean, :default => true;
    remove_column :buy_links, :link_type
  end
end
