# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Comedian.destroy_all
# Event.destroy_all
# User.destroy_all

# comedians = ["Kevin Hart", "Louis C.K.", "Aziz Ansari", "Jim Gaffigan", "Sarah Silverman", "Chelsea Peretti", "Nick Kroll", "Daniel Tosh", "John Oliver", "Hannibal Burress", "Dave Chappelle", "Amy Schumer"] 

Comedian.create({
	name: 'Kevin Hart',
	image: 'http://www.bet.com/topics/k/kevin-hart/_jcr_content/topicintro.topicintro.dimg/010313-shows-real-husbands-hollywood-rhoh-press-kevin-hart-2.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=TTCgr3V_HhI'
	})

Comedian.create({
	name: 'Louis CK',
	image: 'http://coolmaterial.com/wp-content/uploads/2013/10/louis-ck-oh-my-god.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=mQUr2RkjykU'
	})

Comedian.create({
	name: 'Aziz Ansari',
	image: 'http://25.media.tumblr.com/tumblr_m3p31qUFSa1qz7f9to1_1280.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=3oLuxhYO5cw'
	})

Comedian.create({
	name: 'Jim Gaffigan',
	image: 'http://media.livenation.com/artists/78250/78250-show-65737.jpg?1374689257',
	youtube_url: 'https://www.youtube.com/watch?v=N-i9GXbptog'
	})

Comedian.create({
	name: 'Sarah Silverman',
	image: 'https://flavorwire.files.wordpress.com/2013/04/sarah-silverman1.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=nT3yLcqv_8Q'
	})

Comedian.create({
	name: 'Chelsea Peretti',
	image: 'http://cdn.splitsider.com/wp-content/uploads/2014/09/chelsea_peretti_bk99_s2.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=fYXJYHAPT18'
	})

Comedian.create({
	name: 'Nick Kroll',
	image: 'http://www.foodrepublic.com/sites/default/files/imagecache/enlarge/singlepage/Kroll.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=kdcmSdwO2CE'
	})

Comedian.create({
	name: 'Daniel Tosh',
	image: 'http://www.tvequals.com/wp-content/uploads/2010/08/Daniel-Tosh-2.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=W2zTQwWaPps'
	})




Event.create({
	date: "04-25-2015",
	time: "9:00",
	venue: "Grand Sierra Resort and Casino",
	price: 159.00,
	city: "Reno"
	state_name:
	state_code: "NV"
	time_zone: "America/Los_Angeles"
	zipcode: "89595"
	})

Event.create({
	date: "03-19-2015",
	time: "7:00",
	venue: "Santa Cruz Civic Auditorium",
	price: 166.00,
	city: "Santa Cruz",
	state_name:
	state_code: "CA",
	time_zone: "America/Los_Angele",
	zipcode: "95060"
	})

Event.create({
	date: "03-29-2015",
	time: "7:00",
	venue: "Comerica Theatre",
	price: 152.00,
	city: "Phoenix",
	state_name:
	state_code: "AZ",
	time_zone: "America/Phoeni",
	zipcode: "85003"
	})

Event.create({
	date: "03-29-2015",
	time: "7:30",
	venue: "Bryce Jordan Center",
	price: 61.00,
	city: "University Park",
	state_name:
	state_code: "PA",
	time_zone: "America/New_York",
	zipcode: "16802"
	})

Event.create({
	date: "07-17-2015",
	time: "9:30",
	venue: "McCaw Hall",
	price: 84.00,
	city: "Seattle",
	state_name:
	state_code: "WA",
	time_zone: "America/Los_Angele",
	zipcode: "98109"
	})

Event.create({
	date: "07-21-2015",
	time: "7:00",
	venue: "Redding Convention Center",
	price: 88.00,
	city: "Redding",
	state_name:
	state_code: "CA",
	time_zone: "America/Los_Angeles",
	zipcode: "96001"
	})

Event.create({
	date: "07-22-2015",
	time: "7:00",
	venue: "Wells Fargo Center for the Art",
	price: 119.00,
	city: "Santa Rosa",
	state_name:
	state_code: "CA",
	time_zone: "America/Los_Angeles",
	zipcode: "95403"
	})

Event.create({
	date: "07-23-2015",
	time: "7:00",
	venue: "Mountain Winery",
	price: 111.00,
	city: "Saratoga",
	state_name:
	state_code: "CA",
	time_zone: "America/Los_Angeles",
	zipcode: "95070"
	})

Event.create({
	date: "04-18-2015",
	time: "8:00",
	venue: "Ryman Auditorium",
	price: 52.00,
	city: "Nashville",
	state_name:
	state_code: "TN",
	time_zone: "America/Chicago",
	zipcode: "37219"
	})

Event.create({
	date: "04-24-2015",
	time: "10:00",
	venue: "Terry Fator Theatre at Mirage Hotel and Casino",
	price: 143.00,
	city: "Las Vegas",
	state_name:
	state_code: "NV",
	time_zone: "America/Los_Angeles",
	zipcode: "89109"
	})

Event.create({
	date: "06-09-2015",
	time: "7:00",
	venue: "Collins Center for the Arts",
	price: 93.00,
	city: "Orono",
	state_name:
	state_code: "ME",
	time_zone: "America/New_York",
	zipcode: "04469"
	})

Event.create({
	date: "06-13-2015",
	time: "7:00",
	venue: "Merrill Auditorium",
	price: 106.00,
	city: "Portland",
	state_name:
	state_code: "ME",
	time_zone: "America/New_York".
	zipcode: "04101"
	})

