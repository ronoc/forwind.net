fourth = Artist.new(:name => "fourth page", :image=> "fourth_page.jpg", :location => "London", :start_date => DateTime.new(2010), :end_date => DateTime.now)
fourth.description = "4th Page's music is improvised. Some of it sounds like it wasn't. Fragments of jazz, trace elements of the more experimental side of English folk and even Krautrock surface in a quietly intense music that floats effortlessly between dark, stretched songforms and impressionist abstraction.<br/><br/>
Heralding mainly from London, Fourth Page came together informally in 2010. The members had played together in
various combinations but not as a quartet. <br/><br/>Carolyn Hume and Paul May had played as a duo for the last ten years
releasing five critically acclaimed albums on Leo Records, Peter Marsh and Paul May have played together in
various groups as well as recently providing the live rhythm section for Petra Jean Phillipson. Charlie Beresford
(known in the main for his solo work and studio production) came into the equation after a recent recording that he,
Paul May and Duke Garwood made under the guise of Abdon Liberty."
fourth.save

fp1 = Link.new({:location => "http://www.brightfieldproductions.co.uk/4thpage/", :artist_id => fourth.id})
fp1.save

fp_rel = Release.new({:title => "Along the weak rope", :short_desc => "", :long_desc => "“...beautifully produced doing justice to all the amazing sounds, and I love the Hawksmoor, damp, cobwebby feel . I thought it was perhaps the sort of song cycle Schubert might have written if he'd been around today. The anguish of Winterreise with its chinks of light.... Sylvian too.” - Fiona Talkington, Late Junction, BBC Radio 3", :cat => 'FWD05', :release_date => DateTime.new(2011, 05, 31)})
fp_rel.save
fourth.releases << fp_rel
fp_rel.save
fourth.save

