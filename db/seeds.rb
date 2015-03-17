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
<<<<<<< HEAD
	image: '	youtube_url: 'https://www.youtube.com/embed/TTCgr3V_HhI'
=======
	image: 'http://i.imgur.com/ftDSpf1.jpg',
	youtube_url: 'https://www.youtube.com/embed/TTCgr3V_HhI'
>>>>>>> d45e515bdc770aac0786ed6f8e2b807df84658b4
	})

Comedian.create({
	name: 'Louis CK',
	image: 'http://i.imgur.com/gq2IayX.jpg',
	youtube_url: 'https://www.youtube.com/embed/mQUr2RkjykU'
	})

Comedian.create({
	name: 'Aziz Ansari',
	image: 'http://i.imgur.com/HWpEfWB.jpg',
	youtube_url: 'https://www.youtube.com/embed/3oLuxhYO5cw'
	})

Comedian.create({
	name: 'Jim Gaffigan',
	image: 'http://i.imgur.com/hu4EmGa.jpg',
	youtube_url: 'https://www.youtube.com/embed/N-i9GXbptog'
	})

Comedian.create({
	name: 'Sarah Silverman',
	image: 'http://i.imgur.com/apiN2N3.jpg',
	youtube_url: 'https://www.youtube.com/embed/nT3yLcqv_8Q'
	})

Comedian.create({
	name: 'Chelsea Peretti',
	image: 'http://i.imgur.com/cDfsYp9.jpg',
	youtube_url: 'https://www.youtube.com/embed/fYXJYHAPT18'
	})

Comedian.create({
	name: 'Nick Kroll',
	image: 'http://i.imgur.com/lnBnRF6.jpg',
	youtube_url: 'https://www.youtube.com/embed/kdcmSdwO2CE'
	})

Comedian.create({
	name: 'Daniel Tosh',
	image: 'http://i.imgur.com/judq3RS.jpg',
	youtube_url: 'https://www.youtube.com/embed/W2zTQwWaPps'
	})

Event.create({
	date: "04-25-2015",
	time: "9:00",
	venue: "Grand Sierra Resort and Casino",
	price: 159.00,
	city: "Reno",
	state_name: 'Nevada',
	state_code: "NV",
	time_zone: "America/Los_Angeles",
	zipcode: "89595"
	})

Event.create({
	date: "03-19-2015",
	time: "7:00",
	venue: "Santa Cruz Civic Auditorium",
	price: 166.00,
	city: "Santa Cruz",
	state_name: 'California',
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
	state_name: 'Arizona',
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
	state_name: 'Pennsylvania',
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
	state_name: 'Washington',
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
	state_name: 'California',
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
	state_name: 'California',
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
	state_name: 'California',
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
	state_name: 'Tennessee',
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
	state_name: 'Nevada',
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
	state_name: "Maine",
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
	state_name: "Maine",
	state_code: "ME",
	time_zone: "America/New_York",
	zipcode: "04101"
	})



c4 = Comedian.create({
	name: 'John Oliver',
	image: 'http://i.imgur.com/MBzGMnX.jpg',
	youtube_url: 'https://www.youtube.com/embed/DeQqe0oj5Ls'
	})

c2 = Comedian.create({
	name: 'Hannibal Burress',
	image: 'http://i.imgur.com/NXgb3P8.jpg',
	youtube_url: 'https://www.youtube.com/embed/BklmMSEYRgk'
	})

c3 = Comedian.create({
	name: 'Dave Chappelle',
	image: 'http://i.imgur.com/4wZ8ln8.jpg',
	youtube_url: 'https://www.youtube.com/embed/LLWlBgj0uOc'
	})

c1 = Comedian.create({
	name: 'Amy Schumer',
	image: 'http://i.imgur.com/BFMSezS.jpg',
	youtube_url: 'https://www.youtube.com/embed/YEXmu89_E8o'
	})

u1 = User.create({
	email: 'daniel.snider87@gmail.com',
	password: '12312313'
	})

u2 = User.create({
	email: 'sol@gmail.com',
	password: '123123123'
	})

u3 = User.create({
	email: 'davidedaniel@gmail.com',
	password: '123123',
	zipcode: '10001'
	})

u3.comedians = [c1,c2,c3]
u2.comedians = [c3,c4]
u2.save
u1.save

e1 = Event.create({
	date: "03-21-2015",
	time: "12:00",
	venue: "MSG",
	price: 45.00,
	zipcode: '10001',
	comedian_id: c3.id
	})


e2 = Event.create({
	date: "03-22-2015",
	time: "18:00",
	venue: "Best Buy Theater",
	price: 60.00,
	zipcode: '10001',
	comedian_id: c3.id
	})

Event.create({
	date: "07-22-2015",
	time: "7:00",
	venue: "Wells Fargo Center for the Art",
	price: 119.00,
	zipcode: '10001',
	comedian_id: c1.id
	})

Event.create({
	date: "07-23-2015",
	time: "7:00",
	venue: "Mountain Winery",
	price: 111.00,
	zipcode: '10001',
	comedian_id: c1.id
	})

Event.create({
	date: "04-18-2015",
	time: "8:00",
	venue: "Ryman Auditorium",
	price: 52.00,
	zipcode: '10001',
	comedian_id: c4.id
	})

Event.create({
	date: "04-24-2015",
	time: "10:00",
	venue: "Terry Fator Theatre at Mirage Hotel and Casino",
	price: 143.00,
	zipcode: '10001',
	comedian_id: c4.id
	})

Event.create({
	date: "06-09-2015",
	time: "7:00",
	venue: "Collins Center for the Arts",
	price: 93.00,
	zipcode: '10001',
	comedian_id: c4.id
	})

Event.create({
	date: "06-13-2015",
	time: "7:00",
	venue: "Merrill Auditorium",
	price: 106.00,
	zipcode: '10001',
	comedian_id: c3.id
	})
