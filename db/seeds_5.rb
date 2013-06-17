artist = Artist.new(:name => "Clang Sayne", :image => "clangsayne.jpg", :location => "London, Wexford", :start_date => DateTime.new(2006), :end_date => DateTime.now)
artist.description = "Clang Sayne is a platform for songwriter and improvisor, Laura Hyland
to collaborate with other artists from all disciplines. It began as a
band exploring the boundaries between song and improvisation, the main
output of which to date has been the album, 'Winterlands', and ongoing
musical performances. Since its incarnation Clang Sayne has slowly
begun to grow into a bigger project combining song and improvisation
with other artforms."
artist.save

l1 = Link.new({:location => "http://www.clangsayne.net/", :artist_id => artist.id})
l1.save
l2 = Link.new({:location => "http://www.myspace.com/clangsayne", :artist_id => artist.id})
l2.save
l3 = Link.new({:location => "http://www.soundcloud.com/clangsayne", :artist_id => artist.id})
l3.save
l4 = Link.new({:location => "http://www.last.fm/music/Clang+Sayne ", :artist_id => artist.id})
l4.save

rel = Release.new({:title => "Winterlands", :short_desc => "Improv", :long_desc => "<i>This is a set of live, organic, no-safety-net performances; there is something exhilarating about this modest yet perverse album and its refusal to conform</i> - Clive Bell, The Wire", :cat => 'FWD04', :release_date => DateTime.new(2011, 03, 31)})
artist.releases << rel
rel.save
artist.save
