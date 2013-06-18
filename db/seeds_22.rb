schisms = Podcast.new(:title => "Voltage/Lungs", :cat_no => "FWDP08",
:file_name => "/podcasts/FWDP08", :duration => 130, :genre => "Free Improvisation", :available => true)
jm = Artist.find_by_name("Square Waves")
jm.save
schisms.artist = jm
schisms.save

schisms_track_list = TrackList.new
schisms_track_list.podcast = schisms
schisms.track_list = schisms_track_list 
schisms.save
schisms_track_list.save

tracks = []
tracks << Track.new(:position => 0, :artist_title => "Revolt - John Butcher & Phil Durrant", :label => "Wobbly Rail") 
tracks << Track.new(:position => 1, :artist_title => "Dark Rags #1 - Evan Parker and Keith Rowe", :label => "Potlatch") 
tracks << Track.new(:position => 2, :artist_title => "For Mario Schiano And Andre Williams - Mats Gustafsson & His All-Stars Feat. John Corbett", :label => "Xeric") 
tracks << Track.new(:position => 3, :artist_title => "Teem III - Olivia Block & Kyle Bruckmann", :label => "either/OAR") 
tracks << Track.new(:position => 4, :artist_title => "A Mean Fiddle -  Eddie Prevost, Jim O'Rourke ", :label => "complacency")
tracks << Track.new(:position => 5, :artist_title => "Which Shews That There Are More Ways to Kill a Dog Than Hanging - John Tilbury and Evan Parker", :label => "matchless recordings")  
tracks << Track.new(:position => 6, :artist_title => "What Remains - John Butcher", :label => "Weight of Wax")  
tracks << Track.new(:position => 7, :artist_title => "Les Cornichons - The Contest of Pleasures", :label => "Potlatch")  
tracks << Track.new(:position => 7, :artist_title => "Tane - Toshimaru Nakamura", :label => "samadhisound")  

tracks.each do |t|
  t.track_list = schisms_track_list
  t.save 
end

