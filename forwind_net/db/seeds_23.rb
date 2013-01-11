schisms = Podcast.new(:title => "Storm", :cat_no => "FWDP09",
:file_name => "/podcasts/FWDP09", :duration => 73, :genre => "Electronic", :available => true)
jm = Artist.find_by_name("SKZW")
jm.save
schisms.artist = jm
schisms.save

schisms_track_list = TrackList.new
schisms_track_list.podcast = schisms
schisms.track_list = schisms_track_list 
schisms.save
schisms_track_list.save

tracks = []
tracks << Track.new(:position => 0, :artist_title => "Ensi - Pan Sonic", :label => "Blast First") 
tracks << Track.new(:position => 1, :artist_title => "Discomfort - Thembi Soddell", :label => "Cajid Media") 
tracks << Track.new(:position => 2, :artist_title => "Minus Degrees, Bare Feet, Tickles - Vladislav Delay Quartet", :label => "Honest Jon's Records") 
tracks << Track.new(:position => 3, :artist_title => "Into Bios (Intro) - Byetone", :label => "Raster-Noton") 
tracks << Track.new(:position => 4, :artist_title => "Plastic Star (Session) - Byetone", :label => "Raster-Noton")
tracks << Track.new(:position => 5, :artist_title => "Rähinä I / Mayhem I - Pan Sonic", :label => "Blast First")  
tracks << Track.new(:position => 6, :artist_title => "Augmatic Disport - Autechre", :label => "Warp Records")  
tracks << Track.new(:position => 7, :artist_title => "Tangent - Emptyset", :label => "Subtext")  
tracks << Track.new(:position => 8, :artist_title => "Mirrors - Kangding Ray", :label => "Raster-Noton") 
tracks << Track.new(:position => 9, :artist_title => "Cloudchamber - Deathprod", :label => "Rune Grammofon") 
tracks << Track.new(:position => 10, :artist_title => "Studies For Thunder - Robert Henke", :label => "Imbalance Computer Music") 
tracks << Track.new(:position => 11, :artist_title => "Towboat - Deathprod", :label => "Rune Grammofon")
tracks << Track.new(:position => 12, :artist_title => "Amoco Cadiz - Speedy J", :label => "Novamute")
tracks << Track.new(:position => 13, :artist_title => "Haliod Xerrox Copy 1 - Alva Noto", :label => "Raster-Noton")

tracks.each do |t|
  t.track_list = schisms_track_list
  t.save 
end

