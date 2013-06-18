schisms = Podcast.new(:title => "Vibrations", :cat_no => "FWDP06",
:file_name => "/podcasts/FWDP06", :duration => 175, :genre => "Strings/Synth", :available => true)
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
tracks << Track.new(:position => 0, :artist_title => "Indeed (Side B) - Oren Ambarchi & Jim O’Rourke", :label => "Editions Mego") 
tracks << Track.new(:position => 1, :artist_title => "Stolen Ground - Richard Skelton", :label => "Sustain-Release") 
tracks << Track.new(:position => 2, :artist_title => "Varforgraterdu - Varforgraterdu", :label => "") 
tracks << Track.new(:position => 3, :artist_title => "Soil/Subsoil - Amanda Ferry", :label => "") 
tracks << Track.new(:position => 4, :artist_title => "Never Gets Out Of Me - Ellen Fullman", :label => "Important Records")
tracks << Track.new(:position => 5, :artist_title => "One - Ernst Karel", :label => "and/OAR")  
tracks << Track.new(:position => 6, :artist_title => "Light - Barn Owl & The Infinite Strings Ensemble", :label => " Important Records")  
tracks << Track.new(:position => 7, :artist_title => "Poure - Phill Niblock", :label => "Touch")  
tracks << Track.new(:position => 8, :artist_title => "A Brighter Summer Day - Burning Star Core", :label => "Thin Wrist Recordings")  
tracks << Track.new(:position => 9, :artist_title => "Rotational Change For Windmil - Eleh", :label => "Touch")  
tracks << Track.new(:position => 10, :artist_title => "Transamorem - Transmortem - Eliane Radigue", :label => "Important Records")  

tracks.each do |t|
  t.track_list = schisms_track_list
  t.save 
end

