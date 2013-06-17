rels = Release.find :all

rels.each do |release|
  release.release_links.each do |link|
    if link.vendor == "Spotify"
      link.link_type = RELEASE_LINK_TYPES[:STREAM]
    elsif link.vendor == "Amazon"
      link.link_type = RELEASE_LINK_TYPES[:DOWNLOAD]
    elsif link.vendor == "Emusic"
      link.link_type = RELEASE_LINK_TYPES[:DOWNLOAD]
    elsif link.vendor == "ITunes"
      link.link_type = RELEASE_LINK_TYPES[:DOWNLOAD]
    elsif link.vendor == "Boomkat"
      link.link_type = RELEASE_LINK_TYPES[:DOWNLOAD]
    elsif link.vendor == "Norman Records"
      link.link_type = RELEASE_LINK_TYPES[:PHYSICAL]
    elsif link.vendor == "JamesOSullivan.co.uk"
      link.link_type = RELEASE_LINK_TYPES[:PHYSICAL]
    elsif link.vendor == "ClangSayne.net"
      link.link_type = RELEASE_LINK_TYPES[:PHYSICAL]
    end
    link.save
  end
end

w = Release.find_by_title "Winterlands"
ws = ReleaseLink.new(:location => "http://open.spotify.com/album/2Wjwb2mL9WTpd1A49td1ey", :vendor => "Spotify", :release_id => w.id, :link_type => RELEASE_LINK_TYPES[:STREAM])
ws.save
w.release_links << ws 
wm = ReleaseLink.new(:location => "http://mapsadaisical.wordpress.com/2010/03/10/clang-sayne-winterlands-clang-sayne/", :vendor => "Mapsadaisical", :release_id => w.id, :link_type => RELEASE_LINK_TYPES[:REVIEW])
wm.save
w.release_links << wm 
ww = ReleaseLink.new(:location => "http://www.clangsayne.net/pressitem_thewireclivebell.html", :vendor => "The Wire", :release_id => w.id, :link_type => RELEASE_LINK_TYPES[:REVIEW])
ww.save
w.release_links << ww 
w.save

s = Release.find_by_title "Seven months in E minor"
ss = ReleaseLink.new(:location => "http://open.spotify.com/album/3gOVRtu5cNKN8icHKLEAOX", :vendor => "Spotify", :release_id => s.id, :link_type => RELEASE_LINK_TYPES[:STREAM])
ss.save
s.release_links << ss 
sm = ReleaseLink.new(:location => "http://www.themilkfactory.co.uk/st/2010/06/sonnamble-seven-months-in-e-minor-forwind/", :vendor => "The Milk Factory", :release_id => s.id, :link_type => RELEASE_LINK_TYPES[:REVIEW])
sm.save
s.release_links << sm
sf = ReleaseLink.new(:location => "http://www.412limited.co.uk/house-electro/features/sonnamble-seven-months-in-e-minor-review", :vendor => "412", :release_id => s.id, :link_type => RELEASE_LINK_TYPES[:REVIEW])
sf.save
s.release_links << sf
s.save

e = Release.find_by_title "elvers"
es = ReleaseLink.new(:location => "http://open.spotify.com/album/6pt7ZB2Ikvl2JZazWHxWaC", :vendor => "Spotify", :release_id => e.id, :link_type => RELEASE_LINK_TYPES[:STREAM])
es.save
e.release_links << es 
ej = ReleaseLink.new(:location => "http://www.allaboutjazz.com/php/article.php?id=39687", :vendor => "All About Jazz", :release_id => e.id, :link_type => RELEASE_LINK_TYPES[:REVIEW])
ej.save
e.release_links << ej
e.save

f = Release.find_by_title "feed back couple"
fs = ReleaseLink.new(:location => "http://open.spotify.com/album/1ugm6WmoKDHUzad9iO0Pw4", :vendor => "Spotify", :release_id => f.id, :link_type => RELEASE_LINK_TYPES[:STREAM])
fs.save
f.release_links << fs 
f.save

