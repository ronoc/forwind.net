class AlterArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :image, :string
    add_column :artists, :location, :string
    add_column :artists, :start_date, :datetime
    add_column :artists, :end_date, :datetime
  end

  def self.down
    remove_column :artists, :image
    remove_column :artists, :location
    remove_column :artists, :start_date
    remove_column :artists, :end_date
  end
end
