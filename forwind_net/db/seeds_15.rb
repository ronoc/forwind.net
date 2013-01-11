s = Release.find_by_title "Seven months in E minor"

ws = ReleaseLink.new(:location => "http://www.experimedia.net/index.php?main_page=product_music_info&cPath=1&products_id=1458", :vendor => "Experimedia", :release_id => s.id, :link_type => RELEASE_LINK_TYPES[:PHYSICAL])

ws.save
