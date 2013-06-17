form = Release.find_by_title('Form')
form.release_date = DateTime.new(2008, 9, 22)
form.save
seven_months = Release.find_by_title('Seven months in E minor')
seven_months.release_date = DateTime.new(2010, 3, 29)
seven_months.save
winterlands = Release.find_by_title("Winterlands")
winterlands.release_date = DateTime.new(2011, 5, 16, 12)
winterlands.save
fbc = Release.find_by_title("feed back couple")
fbc.release_date = DateTime.new(2011, 5, 16, 10)
fbc.save
elvers = Release.find_by_title("elvers")
elvers.release_date = DateTime.new(2011, 5, 16, 11)
elvers.save

