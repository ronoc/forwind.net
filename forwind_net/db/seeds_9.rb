w = Release.find_by_title("Winterlands")
csb = BuyLink.new(:location => "http://www.clangsayne.net/shop.html", :medium => "false", :vendor => "ClangSayne.net", :release_id => w.id)
csb.save
w.buy_links << csb
w.save

fbc = Release.find_by_title("feed back couple")
fbcb = BuyLink.new(:location => "http://www.jamesosullivan.co.uk/buy.html", :medium => "false", :vendor => "JamesOSullivan.co.uk", :release_id => fbc.id)
fbcb.save
fbc.buy_links << fbcb
fbc.save

