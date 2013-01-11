outpost = Podcast.new(:title => "Outpost", :cat_no => "FWDP02", :file_name => "/podcasts/FWDP02", :duration => 40, :genre => "noise, drone, experimental", :available => true)

outpost.artist = Artist.find_by_name("Traces");
outpost_track_list = TrackList.new
outpost_track_list.podcast = outpost
outpost.track_list = outpost_track_list 
outpost.save
outpost_track_list.save

tracks = []
tracks << Track.new(:position => 0, :artist_title => "File Under Toner - Violins", :label => "Hazard Records") 
tracks << Track.new(:position => 1, :artist_title => "Shrine - The Silo Sanctuary", :label => "Drone Records") 
tracks << Track.new(:position => 2, :artist_title => "Cosey Fanni Tutti & Philippe Petit - Invisible Whispers", :label => "Dirter Promotions") 
tracks << Track.new(:position => 3, :artist_title => "Noise Dreams Machina - In", :label => "Drone Records") 
tracks << Track.new(:position => 4, :artist_title => "Hierro - Locked Groove", :label => "Immolate") 
tracks << Track.new(:position => 5, :artist_title => "Pierre Henry & Pierre Schaeffer - Deux Aspects de Piano", :label => "Ducretet Thomson") 
tracks << Track.new(:position => 6, :artist_title => "Robert Piotrowicz - 	School Girl Band Of Gromovaya Balka (Performed On 10th Anniversary Of Death Of Emil Cioran) ", :label => "Bocian Records") 
tracks << Track.new(:position => 7, :artist_title => "Johnny Cash - Hiawatha's Vision", :label => "Colombia") 
tracks << Track.new(:position => 8, :artist_title => "Pete Swanson - Challenger A Untitled", :label => "Not On Label (Pete Swanson Self-released)") 
tracks << Track.new(:position => 9, :artist_title => "Beethoven - Symphony 3 Eroica - Finale - Berlin Philharmonic . Herbert von Karajan", :label => "Deutsche Grammophon") 
tracks << Track.new(:position => 10, :artist_title => "AGF - Antye Greie - Fuchs ", :label => "Crosstalk") 
tracks << Track.new(:position => 11, :artist_title => "Polmo Polpo - Rottura", :label => "Audi Sensa") 
tracks << Track.new(:position => 12, :artist_title => "Zhao Jiping - Flute Solo - Raise the Red Lantern", :label => "Milan Records") 
tracks << Track.new(:position => 13, :artist_title => "Jana Winderen - The Noisiest Guys on the Planet", :label => "Ash International") 
tracks << Track.new(:position => 14, :artist_title => "MCMLXV - Sequence 1", :label => "MCMLXV") 
tracks << Track.new(:position => 15, :artist_title => "Philip Jeck - Tenderberries Version", :label => "Touch 7 inch Series") 
tracks << Track.new(:position => 16, :artist_title => "Innercity - Future Life A3", :label => "Aguirre Records") 
tracks << Track.new(:position => 17, :artist_title => "Lume - Mosquitos", :label => "Diskono") 

tracks.each do |t|
  t.track_list = outpost_track_list
  t.save 
end

