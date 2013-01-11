schisms = Podcast.new(:title => "Schism", :cat_no => "FWDP03", :file_name => "/podcasts/FWDP03", :duration => 35, :genre => "guitar drone, noise", :available => true)
jm = Artist.new(:name => "Jones & Marsh", :description => "stuff")
jm.save
schisms.artist = jm
schisms.save

schisms_track_list = TrackList.new
schisms_track_list.podcast = schisms
schisms.track_list = schisms_track_list 
schisms.save
schisms_track_list.save

tracks = []
tracks << Track.new(:position => 0, :artist_title => "Schism 1 - Jones & Marsh", :label => "") 
tracks << Track.new(:position => 1, :artist_title => "Schism 2 - Jones & Marsh", :label => "") 
tracks << Track.new(:position => 2, :artist_title => "Schism 3 - Jones & Marsh", :label => "") 
tracks << Track.new(:position => 3, :artist_title => "Schism 4 - Jones & Marsh", :label => "") 
tracks << Track.new(:position => 4, :artist_title => "Schism 5 - Jones & Marsh", :label => "")
tracks << Track.new(:position => 5, :artist_title => "Schism 6 - Jones & Marsh", :label => "")  

tracks.each do |t|
  t.track_list = schisms_track_list
  t.save 
end

