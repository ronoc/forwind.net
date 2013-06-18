rel = Release.new({:title => "Blindlight", :short_desc => "Blindlight is the second release from London based electro-acoustic improvisers Sonnamble, again consisting of Conor Curran on electronics and software and Peter Marsh on stringed instruments.", :long_desc => "Blindlight is the second release from London based electro-acoustic improvisers Sonnamble, again consisting of Conor Curran on electronics and software and Peter Marsh on stringed instruments.<br/><br/> Again the focus is on Marsh's lap steel guitar, whose drones, chords and twangs are coaxed into expansive ambient fuzziness or atomised into grains of noise by Curran's home-cooked software patches. But there's a spareness and a more pronounced spikiness to the music this time round; it's still immersive stuff, but more edgy... ", :cat => 'FWD06', :release_date => DateTime.new(2011, 07, 18), :available => false})

artist = Artist.find_by_name("Sonnamble")
artist.releases << rel
rel.save
artist.save


