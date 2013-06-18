User.create(:username => "shane", :password => "lawlor", :password_confirmation => "lawlor", :email => "shane@forwind.net")
User.create(:username => "ronoc", :password => "narruc", :password_confirmation => "narruc", :email => "conor@forwind.net")
pete = Artist.create(:name => "Peter Marsh", :description => "")
p = Podcast.find(0)
p.file_name = "/podcasts/FWDP00"
winter = Podcast.new(:title => "Winter Songs", :id => 1, :cat_no => "FWDP01", :file_name => "/podcasts/FWDP01", :duration => 49, :genre => "electroacoustic, improv", :available => true)
winter.artist = pete
winter.save 
TrackList.create(:id => 1, :podcast_id => 1)
Track.create(:track_list_id => 1, :position => 0, :artist_title => "Polwechsel/Fennesz - Framing 8", :label => "Erstwhile")
Track.create(:track_list_id => 1, :position => 1, :artist_title => "Abdon Liberty - Like A Smile", :label => "")
Track.create(:track_list_id => 1, :position => 2, :artist_title => "Toru Takemitsu - Water Music", :label => "RCA Victrola")
Track.create(:track_list_id => 1, :position => 3, :artist_title => "Fritz Hauser - Skizzen, Gedanken, Gesten III", :label => "hat[now]ART")
Track.create(:track_list_id => 1, :position => 4, :artist_title => "Trapist - My Shoulder Was The One You Cried On That Day", :label => "hatOLOGY 586")
Track.create(:track_list_id => 1, :position => 5, :artist_title => "Natasha Barrett - Displaced: Replaced - Fog Light Wind", :label => "empreintes DIGITALes ")
Track.create(:track_list_id => 1, :position => 6, :artist_title => "Supersilent - 5.4", :label => "Rune Grammofon")
Track.create(:track_list_id => 1, :position => 7, :artist_title => "Lotos & Burkhard Schlothauer & Poul Naes - Konzert fur Streichinstrumente", :label => "NURNICHTNUR")
Track.create(:track_list_id => 1, :position => 8, :artist_title => "Eric Aldea - Petit Buddah II", :label => "Ici D'Ailleurs")
Track.create(:track_list_id => 1, :position => 9, :artist_title => "Marcus Schmickler - Agogh", :label => "A-Musik")
Track.create(:track_list_id => 1, :position => 10, :artist_title => "Mark Hollis - The Colour of Spring", :label => "Spectrum")

Track.create(:track_list_id => 1, :position => 11, :artist_title => "Peter Cusack - Roar Over Ice", :label => "Recommended")
Track.create(:track_list_id => 1, :position => 12, :artist_title => "Seasons (pre-din) - Every Heart I Know Has Been Broken", :label => "THY")
