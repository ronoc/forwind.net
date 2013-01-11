class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      #t.references :release
      #t.foreign_key :release_id, :releases, :cat_no
  		t.integer :release_id, :null => false
  		t.integer :artist_id, :null => false
  		t.string :title, :null => false
			t.string :description
    end
		Fixtures.create_fixtures('test/fixtures', File.basename("pieces.yml", '.*'))
  end

  def self.down
    drop_table :pieces
  end
end

