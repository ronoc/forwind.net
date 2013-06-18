r = Release.find_by_title "Along the weak rope"
r.available = true

amazon = BuyLink.new(:location => "http://www.amazon.co.uk/Along-The-Weak-Rope/dp/B0051RNDYW/ref=sr_1_2?ie=UTF8&qid=1307808332&sr=8-2", :vendor => "Amazon", :release_id => r.id)
amazon.save
r.buy_links << amazon

emusic = BuyLink.new(:location => "http://www.emusic.com/album/fourth-page-along-the-weak-rope-MP3-Download/12614005.html", :vendor => "Emusic", :release_id => r.id)
emusic.save
r.buy_links << emusic

#itunes = BuyLink.new(:location => "http://itunes.apple.com/gb/album/seven-#months-in-e-minor/id371692981", :vendor => "iTunes", :release_id => r.id)
#itunes.save
#r.buy_links << itunes

spotify = BuyLink.new(:location => "http://open.spotify.com/album/5FJwm3YStSRFDV248EIFA5", :vendor => "Spotify", :release_id => r.id)
spotify.save
r.buy_links << spotify
r.save



