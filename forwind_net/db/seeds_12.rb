#a = Artist.find_by_name "Sonnamble"
#a.description = "Sonnamble is a project set up by musician, programmer and engineer Conor Curran to explore the possibilities of mixing real time playing with live processing. His principal collaborator is bassist and lap steel guitarist Peter Marsh, and together they make music that blurs the distinction between improvisation and electronica, mixing lush dronescapes with glitchy abstractions or wispy, fragmented clouds of melody."
#a.location = "London"
#a.start_date = DateTime.new (2008)
#a.end_date = DateTime.now
r = Release.find_by_title ("Seven months in E minor")
r.long_desc = "This is a improvisational piece of work exploring the realm of heavily processed lap steel, double bass, analogue synth and guitar.<br/><br/> 
Contributors include Peter Marsh and Conor Curran. "

smbp = BuyLink.new(:location => "http://www.normanrecords.com//cd/115079-sonnamble-seven-months-in-e-minor", :medium => "false", :vendor => "Norman Records", :release_id => r.id)
smbp.save
r.buy_links << smbp
r.save

smbb = BuyLink.new(:location => "http://boomkat.com/downloads/304898-sonnamble-seven-months-in-e-minor", :vendor => "Boomkat", :release_id => r.id)
smbb.save
r.buy_links << smbb

sm_a = BuyLink.new(:location => "http://www.amazon.co.uk/Seven-Months-In-E-Minor/dp/B0051RP16A/ref=sr_1_1?ie=UTF8&qid=1307806277&sr=8-1", :vendor => "Amazon", :release_id => r.id)
sm_a.save
r.buy_links << sm_a

sm_e = BuyLink.new(:location => "http://www.emusic.com/album/Sonnamble-Seven-months-in-E-minor-MP3-Download/12614131.html", :vendor => "Emusic", :release_id => r.id)
sm_e.save
r.buy_links << sm_e

sm_i = BuyLink.new(:location => "http://itunes.apple.com/gb/album/seven-months-in-e-minor/id371692981", :vendor => "iTunes", :release_id => r.id)
sm_i.save
r.buy_links << sm_i

r.save



