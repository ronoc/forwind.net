cjc = Artist.find_by_name "CjC"
cjc.location = "Dublin, Dungarvan"
cjc.start_date = DateTime.new(1999)
cjc.end_date = DateTime.new(2003)
cjc.description = "Conor J Curran is an electronic musician and sound artist based in London. He studied at Trinity College Dublin under electroacoustic composers Donnacha Dennehy and Roger Doyle and has been involved in many different music projects such as Liquid Hifi, Street Thunder, Sonnamble and his solo project CjC.</p><p>His work, both music and audio/visual software, has been used in modern dance by Dance Theatre of Ireland (Evidence 2001) and in Film by Conor McCourt (Four Cops 1999). Conor's Parallel, a music visualisation application, was featured at London’s Cybersonica 2002, on Rhizome.org, Neural.it and in 'Exhibit1'at the Digital Hub in Dublin from January to March 2003.</p><p>CjC has released material on Psychonavigation Records, Silverdoor and Forwind. Even though completed in 2003, Conor's debut solo album 'Form' was not released until 2008 on Forwind. It encompasses electronic instrumentals from melodic to abstract. Spatial geometric concepts act as the origins of the timbre and expression. Form to a large extent was influenced by the Parallel software Conor was writing at the time. Track titles, album artwork and the aural visual language all adhere strictly to the spacial concept of Form.
"
cl1 = Link.new({:location => "http://www.noemalab.org/sections/arte_memo.php?IDMemo=137", :artist_id => cjc.id})
cl1.save
cjc.links << cl1
cl2 = Link.new({:location => "http://www.thedigitalhubexhibit.com/events-archive/exhibit/exhibit1", :artist_id => cjc.id})
cl2.save
cjc.links << cl2
cl3 = Link.new({:location => "http://www.psychonavigation.com/split12inch.html", :artist_id => cjc.id})
cl3.save
cjc.links << cl3
cl4 = Link.new({:location => "http://www.electrocd.com/en/cat/sido_010/", :artist_id => cjc.id})
cl4.save
cjc.links << cl4
cjc.image = "cjc.jpg"
cjc.save

form = Release.find_by_cat("FWD00")
cjc.releases << form


jos = Artist.find 8
jos.image = "jos.jpg"
jos.description = "James O’Sullivan is a London-based electric guitar player. His work explores the relationship
between improvisation, recording and performance. His first album of solo guitar pieces, ‘ feed back
couple’ consists of pieces taken form long, exploratory recordings, which show the range of his solo
work at that point in time, from textural, abstract (almost ambient) use of the guitar to more free-
flowing, percussive, angular and (even!) melodic. The over-arching aim in all cases is to show the
detail and potential of each sound or sound event.
<br/>
He has worked extensively within the parameters of song, in particular in collaboration with song
writer David Hurn, and the improvisational quartet Clang Sayne, and his musical input on these
recordings is far-ranging. With David Hurn’s material, his contribution is always attached to and
centred around a pre-existing song, and serves to continue the idea or mood created by the voice,
words or chord changes within the song itself. With Clang Sayne, although the first record consists
of improvisations around a set of pre-written songs, the outcomes are more unpredictable, the main
aim being to create songs or pieces of music in the moment of playing, through establishing a solid
rapport within the group of musicians.
<br/>
In addition to these ongoing projects, O’Sullivan and Hurn are the founders of ‘Four Seasons
Television’, a project that, using the two founders’ improvisations as a sort of centre, collaborates
with musicians of wide-ranging influences. James is also a member of the improvisational group
founded by Thanos Chrysakis, ‘Tetras’."
jos.location = "London"
jos.start_date = DateTime.new(2005)
jos.end_date = DateTime.now
jl1 = Link.new({:location => "http://www.soundcloud.com/james-osullivan", :artist_id => 8})
jl1.save
jl2 = Link.new({:location => "http://www.soundcloud.com/four-seasons-television", :artist_id => 8})
jl2.save
jl3 = Link.new({:location => "http://www.davidhurn.co.uk", :artist_id => 8})
jl3.save
jl4 = Link.new({:location => "http://www.clangsayne.net", :artist_id => 8})
jl4.save
jl5 = Link.new({:location => "http://www.auralterrains.com/releases/6", :artist_id => 8})
jl6 = Link.new({:location => "http://www.jamesosullivan.co.uk", :artist_id => 8})
jl5.save
jl6.save

hz = Release.find_by_cat "FWD02"
hz.delete
pod = Release.find_by_cat "FWD03"
pod.delete

jos_rel = Release.new({:title => "feed back couple", :short_desc => "Noisy", :long_desc => "‘feed back
couple’ consists of pieces taken from long, exploratory recordings, which show the range of James's solo
work at that point in time, from textural, abstract (almost ambient) use of the guitar to more free-
flowing, percussive, angular and (even!) melodic. The over-arching aim in all cases is to show the
detail and potential of each sound or sound event.", :cat => 'FWD02', :release_date => DateTime.new(2011, 04, 01)})
jos_rel.save
jos.releases << jos_rel
jos.save


sonnamble = Artist.find_by_name "Sonnamble"
sonnamble.location = "London"
sonnamble.start_date = DateTime.new(2008)
sonnamble.end_date = DateTime.now
sonnamble.releases.clear
s_months = Release.find_by_cat("FWD01")
sonnamble.releases << s_months

sonnamble.save
sonnamble.description = "Sonnamble is a project set up by musician, programmer and engineer Conor Curran to explore the possibilities of mixing real time playing with live processing. His principal collaborator is bassist and lap
steel guitarist Peter Marsh, and together they make music that blurs the distinction between improvisation and electronica, mixing lush dronescapes with glitchy abstractions or wispy, fragmented clouds of melody."
sonnamble.image = "sonnamble.jpg"
sl1 = Link.new({:location => "http://www.themilkfactory.co.uk/st/2010/06/sonnamble-seven-months-in-e-minor-forwind/", :artist_id => sonnamble.id})
sl1.save
sl2 = Link.new({:location => "http://www.412limited.co.uk/house-electro/features/sonnamble-seven-months-in-e-minor-review", :artist_id => sonnamble.id})
sl2.save
sonnamble.save

elvers = Artist.new(:name => "Elvers", :image=> "elvers.jpg", :location => "London", :start_date => DateTime.new(2008), :end_date => DateTime.now)
elvers.description = "'Elvers' is a trio formed in 2008 by friends who wished to explore a shared interest in improvised music making without rules, particularly improv rules. Its members have been playing together in various combinations for much longer though. Trumpet player Ian R. Watson, double bassist Peter Marsh and percussionist Paul May have been regular or semi regular fixtures on the fringes of the London free improv scene over the last few years. Watson and Marsh took part in many of Ashley Wales's short run club night 'Back in your town' at the Red Rose until its demise. But most of their playing is in different areas such as folk, jazz, rock and blues - May with Duke Garwood, Petra Jean Philliipson, Carolyn Hume, Clang Sayne and others (often in tandem with Marsh),  whilst  Watson currently plays with Solus Rex, 64 bit and The Treecreepers, a duo with Bellowhead percussionist Pete Flood. Marsh and Watson also collaborated in electric jazz outfit Lob."
elvers.save

e_rel = Release.new({:title => "elvers", :short_desc => "Improv", :long_desc => "Elvers music is improvised but isn’t afraid to groove a bit on occasion or sometimes be almost pretty. This album was recorded on the trio’s sixth meeting on a relaxed afternoon in Brixton. The album is not a 'document' but a snapshot of that afternoon of repose.", :cat => 'FWD03', :release_date => DateTime.new(2011, 03, 31)})
elvers.releases << e_rel
e_rel.save
elvers.save

el1 = Link.new({:location => "http://www.myspace.com/ianrwatson", :artist_id => elvers.id})
el1.save
el2 = Link.new({:location => "http://www.elvers.blogspot.com", :artist_id => elvers.id})
el2.save
elvers.save

