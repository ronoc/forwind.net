jos = Artist.find 8
jos.description = "James O’Sullivan is a London-based electric guitar player. His work explores the relationship
between improvisation, recording and performance. He has worked extensively within the parameters of song, in particular in collaboration with song
writer David Hurn, and the improvisational quartet Clang Sayne, and his musical input on these
recordings is far-ranging. 
</p><p>
With David Hurn’s material, his contribution is always attached to and
centred around a pre-existing song, and serves to continue the idea or mood created by the voice,
words or chord changes within the song itself. With Clang Sayne, although the first record consists
of improvisations around a set of pre-written songs, the outcomes are more unpredictable, the main
aim being to create songs or pieces of music in the moment of playing, through establishing a solid
rapport within the group of musicians.
</p><p>
In addition to these ongoing projects, O’Sullivan and Hurn are the founders of ‘Four Seasons
Television’, a project that, using the two founders’ improvisations as a sort of centre, collaborates
with musicians of wide-ranging influences. James is also a member of the improvisational group
founded by Thanos Chrysakis, ‘Tetras’."
jos.save

cjc = Artist.find_by_name "CjC"
cjc.description = "Conor J Curran is an electronic musician and sound artist based
in London. He studied at Trinity College Dublin under electroacoustic composers
Donnacha Dennehy and Roger Doyle and has been involved in many different music
projects such as Liquid Hifi, Street Thunder, Sonnamble and his solo project CjC.
  </p><p>His work, both music and audio/visual software, has been used in modern
dance by Dance Theatre of Ireland (Evidence 2001) and in Film by Conor McCourt
(Four Cops 1999). Conor's Parallel, a music visualisation application, was
featured at London’s Cybersonica 2002, on Rhizome.org, Neural.it and in 'Exhibit1'at
 the Digital Hub in Dublin from January to March 2003.</p><p>CjC has released material
on Psychonavigation Records, Silverdoor and Forwind. Even though completed in 2003,
Conor's debut solo album 'Form' was not released until 2008 on Forwind. It encompasses
electronic instrumentals from melodic to abstract. Spatial geometric concepts act as
the origins of the timbre and expression. Form to a large extent was influenced by the
Parallel software Conor was writing at the time. Track titles, album artwork and the
aural visual language all strictly adhere to the spacial concept of Form."
cjc.save

elvers = Artist.find_by_name('Elvers')
elvers.description = "'Elvers' is a trio formed in 2008 by friends who wished to
 explore a shared interest in improvised music making without rules, particularly
 improv rules. Its members have been playing together in various combinations for
much longer though. Trumpet player Ian R. Watson, double bassist Peter Marsh and
percussionist Paul May have been regular or semi regular fixtures on the fringes
of the London free improv scene over the last few years. </p><p>Watson and Marsh took
part in many of Ashley Wales's short run club night 'Back in your town' at the Red
Rose until its demise. But most of their playing is in different areas such as
folk, jazz, rock and blues - May with Duke Garwood, Petra Jean Philliipson,
 Carolyn Hume, Clang Sayne and others (often in tandem with Marsh),
 whilst  Watson currently plays with Solus Rex, 64 bit and The Treecreepers,
a duo with Bellowhead percussionist Pete Flood. Marsh and Watson also collaborated
 in electric jazz outfit Lob."
elvers.save
