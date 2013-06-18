w = Release.find_by_title("Winterlands")
w.short_desc = "<i>This is a set of live, organic, no-safety-net performances; there is something exhilarating about this modest yet perverse album and its refusal to conform</i> - Clive Bell, The Wire." 
w.save

fbc = Release.find_by_title("feed back couple")
fbc.short_desc = "James O'Sullivan's first solo album of guitar pieces which examines the relationship between improvisation, recording and performance."
fbc.save

a = Release.find_by_title("Along the weak rope")
a.short_desc = "<i>I thought it was perhaps the sort of song cycle Schubert might have written if he'd been around today. The anguish of Winterreise with its chinks of light.... Sylvian too.</i> - Fiona Talkington, Late Junction, BBC Radio 3."
a.save

e = Release.find_by_title("elvers")
e.short_desc = "Trumpet, double bass and percussion meet in a set of improvisations that are by turns lush, spacious and edgy, recorded on a relaxed afternoon in Brixton."
e.save

