rel = Release.find_by_title "Blindlight"
prl = ReleaseLink.new(:location => "http://www.play.com/Music/MP3-Download-Album/4-/20934420/-/Product.html", :vendor => "Play", :release_id => rel.id, :link_type => RELEASE_LINK_TYPES[:DOWNLOAD])
prl.save
rel.release_links << prl 

arl = ReleaseLink.new(:location => "http://www.amazon.co.uk/Blindlight/dp/B005C7702M/ref=sr_1_1?ie=UTF8&qid=1310672186&sr=8-1
", :vendor => "Amazon", :release_id => rel.id, :link_type => RELEASE_LINK_TYPES[:DOWNLOAD])
arl.save
rel.release_links << arl 
rel.available = true
rel.save
#########################################################
rel2  = Release.find_by_title "Along the weak rope"
prl2 = ReleaseLink.new(:location => "http://www.play.com/Music/MP3-Download-Album/4-/20197342/-/Product.html", :vendor => "Play", :release_id => rel2.id, :link_type => RELEASE_LINK_TYPES[:DOWNLOAD])
prl2.save
rel2.release_links << prl2 
prl3 = ReleaseLink.new(:location => "http://boomkat.com/downloads/423434-fourth-page-along-the-weak-rope", :vendor => "Boomkat", :release_id => rel2.id, :link_type => RELEASE_LINK_TYPES[:DOWNLOAD])
prl3.save
rel2.release_links << prl3 
prl4 = ReleaseLink.new(:location => "http://itunes.apple.com/gb/album/along-the-weak-rope/id438832981", :vendor => "ITunes", :release_id => rel2.id, :link_type => RELEASE_LINK_TYPES[:DOWNLOAD])
prl4.save
rel2.release_links << prl4 
rel2.save

