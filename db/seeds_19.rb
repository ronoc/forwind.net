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
tracks << Track.new(:position => 0, :artist_title => "Untitled - Oren Ambarchi & Jim O’Rourke", :label => "Mego Editions") 
tracks << Track.new(:position => 1, :artist_title => "Male Capercallie Display - Chris Watson", :label => "Touch") 
tracks << Track.new(:position => 2, :artist_title => "Silent landscapes No. 2 - Robert Curgenven", :label => "recorded Fields") 
tracks << Track.new(:position => 3, :artist_title => "June 17 - Nurse With Wound", :label => "ICR") 
tracks << Track.new(:position => 4, :artist_title => "Vatnajókull - Chris Watson", :label => "Touch")
tracks << Track.new(:position => 5, :artist_title => "One - Ernst Karel", :label => "and/OAR")  
tracks << Track.new(:position => 6, :artist_title => "Kataract {Alpha Mix} part 1 - Daniel Menche", :label => " Editions Mego")  
tracks << Track.new(:position => 7, :artist_title => "Headphones - AER", :label => "Touch")  
tracks << Track.new(:position => 8, :artist_title => "Field Recording - janek Schaefer", :label => "Stichting Mixer")  
tracks << Track.new(:position => 9, :artist_title => "Cacerolada - Justin Bennett", :label => " Stichting Mixer")  

tracks.each do |t|
  t.track_list = schisms_track_list
  t.save 
end

