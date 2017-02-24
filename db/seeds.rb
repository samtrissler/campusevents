# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


event1 = Event.create!(name: "Purdue Vs IU Football", start_date: Date.new(2016, 01, 01), end_date:DateTime.new(2016, 01, 01), url: "purduefootball.com")

event2 = Event.create!(name: "IUPUI Graduation Ceremony", start_date: Date.new(2017, 05, 01), end_date:DateTime.new(2017, 05, 01), url: "iupui.edu")

sponsor1 = Sponsor.create!(name: "Test Sponsor", url: "arnis.com", logo: "arnis.png")

sponsor2 = Sponsor.create!(name: "City Bank", url: "citybank.com", logo: "citybank.png")

 meeting1 = Meeting.create!(name: "Purdue vs IU Pep Rally", description: "Pump up before the game!", start_time:DateTime.new(2016, 01, 01), end_time:DateTime.new(2016, 01, 01), location_id: 1, event_id: 1)

  meeting2 = Meeting.create!(name: "Meet the Team!", description: "Meet your Boilermaker athletes!", start_time:DateTime.new(2016, 01, 01), end_time:DateTime.new(2016, 01, 01), location_id: 1, event_id: 1)

   meeting3 = Meeting.create!(name: "Graduation Caps", description: "Get your graduation caps!", start_time:DateTime.new(2017, 05, 05), end_time:DateTime.new(2017, 05, 05), location_id: 2, event_id: 2)

      meeting4 = Meeting.create!(name: "Graduation Practice", description: "IUPUI practice graduation is mandatory!", start_time:DateTime.new(2017, 05, 01), end_time:DateTime.new(2017, 05, 01), location_id: 2, event_id: 2)

location1 = Location.create!(name: "Ross Ade", description: "Home to the Boilermakers!", latitude: 10, longitude: 20, map_url: "rossade.com")

location2 = Location.create!(name: "Pepsi Coliseum", description: "Celebrate IUPUI students graduating.", latitude: 10, longitude: 20, map_url: "iupui.edu")


attendee1 = Attendee.create!(first_name: "Sam", last_name: "Trissler", email: "samtrissler@gmail.com")

attendee2 = Attendee.create!(first_name: "Anne", last_name: "Frank", email: "annefrank@gmail.com")

attendee3 = Attendee.create!(first_name: "Purdue", last_name: "Pete", email: "purduepete@gmail.com")

attendee4 = Attendee.create!(first_name: "Barak", last_name: "Obama", email: "barakpotus@gmail.com")

location1.meetings.push(meeting1, meeting2)
location2.meetings << meeting4
event2.sponsors << sponsor1
event2.sponsors << sponsor2
event1.meetings.push(meeting1, meeting2)
event2.meetings.push(meeting3, meeting4)

location1.save
location2.save
event1.save
event2.save
