fbc = Release.find_by_title("feed back couple")
elvers = Release.find_by_title("elvers")
winterlands = Release.find_by_title("Winterlands")

elvers_b = BuyLink.new(:location => "http://boomkat.com/downloads/405723-elvers-elvers", :vendor => "Boomkat", :release_id => elvers.id)
elvers_b.save
elvers.buy_links << elvers_b

elvers_a = BuyLink.new(:location => "http://www.amazon.co.uk/Elvers/dp/B004YXO2QM/ref=sr_shvl_album_1?ie=UTF8&qid=1305538280&sr=301-1", :vendor => "Amazon", :release_id => elvers.id)
elvers_a.save
elvers.buy_links << elvers_a

elvers_e = BuyLink.new(:location => "http://www.emusic.com/album/Elvers-Elvers-MP3-Download/12535210.html", :vendor => "Emusic", :release_id => elvers.id)
elvers_e.save
elvers.buy_links << elvers_e

elvers_i = BuyLink.new(:location => "http://itunes.apple.com/gb/album/elvers/id435295326", :vendor => "iTunes", :release_id => elvers.id)
elvers_i.save
elvers.buy_links << elvers_i

elvers.save

fbc_b = BuyLink.new(:location => "http://boomkat.com/downloads/405724-james-o-sullivan-feed-back-couple", :vendor => "Boomkat", :release_id => fbc.id)
fbc_b.save
fbc.buy_links << fbc_b

fbc_a = BuyLink.new(:location => "http://www.amazon.co.uk/feed-back-couple/dp/B004YXNY98/ref=sr_shvl_album_1?ie=UTF8&qid=1305566845&sr=301-1", :vendor => "Amazon", :release_id => fbc.id)
fbc_a.save
fbc.buy_links << fbc_a

fbc_e = BuyLink.new(:location => "http://www.emusic.com/album/James-O-Sullivan-feed-back-couple-MP3-Download/12535093.html", :vendor => "Emusic", :release_id => fbc.id)
fbc_e.save
fbc.buy_links << fbc_e

fbc_i = BuyLink.new(:location => "http://itunes.apple.com/gb/album/feed-back-couple/id435295114", :vendor => "iTunes", :release_id => fbc.id)
fbc_i.save
fbc.buy_links << fbc_i

fbc.save

winterlands_b = BuyLink.new(:location => "http://boomkat.com/downloads/405892-clang-sayne-winterlands", :vendor => "Boomkat", :release_id => winterlands.id)
winterlands_b.save
winterlands.buy_links << winterlands_b

winterlands_a = BuyLink.new(:location => "http://www.amazon.co.uk/Winterlands/dp/B004YXQR38/ref=sr_shvl_album_1?ie=UTF8&qid=1305567303&sr=301-1", :vendor => "Amazon", :release_id => winterlands.id)
winterlands_a.save
winterlands.buy_links << winterlands_a

winterlands_e = BuyLink.new(:location => "http://www.emusic.com/album/Clang-Sayne-Winterlands-MP3-Download/12535026.html", :vendor => "Emusic", :release_id => winterlands.id)
winterlands_e.save
winterlands.buy_links << winterlands_e

winterlands_i = BuyLink.new(:location => "http://itunes.apple.com/gb/album/winterlands/id435295595", :vendor => "iTunes", :release_id => winterlands.id)
winterlands_i.save
winterlands.buy_links << winterlands_i

winterlands.save

