schisms = Podcast.new(:title => "aNother Festival 2011 - Vienna - FWDP10", :cat_no => "FWDP10",
:file_name => "/podcasts/FWDP10", :duration => 38, :genre => "Free Improvisation", :available => true)

jm = Artist.new(:name =>"Siewert/Marsh/May")
jm.save
schisms.artist = jm
schisms.save

schisms_track_list = TrackList.new
schisms_track_list.podcast = schisms
schisms.track_list = schisms_track_list 
schisms.save
schisms_track_list.save

tracks = []
tracks << Track.new(:position => 0, :artist_title => "One", :label => "") 
tracks << Track.new(:position => 1, :artist_title => "Two", :label => "") 
tracks << Track.new(:position => 2, :artist_title => "Three", :label => "") 
tracks << Track.new(:position => 3, :artist_title => "Four", :label => "") 

tracks.each do |t|
  t.track_list = schisms_track_list
  t.save 
end

