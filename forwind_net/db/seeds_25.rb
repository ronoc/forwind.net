artist = Artist.new(:name => "Dentistry", :image => "dentistry.jpg", :location => "Dublin", :start_date => DateTime.new(20011), :end_date => DateTime.now)
artist.description = "Dublin trio, Dentistry, consisting of Cian Walker,\n Patrick Fennelly and Jason Joomun, draw influence from a large number of\n sources from Cage to Ambarchi. Dentistry attempt to approach the creation of sound\n through a combination of improvisation and also structured patterns,\n not limiting themselves to live instruments or software synthetics they aim \n to combine both platforms in order to achieve an amalgamation of experimental music."
artist.save


