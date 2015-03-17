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
	image: 'http://cdn.hitfix.com/photos/5496125/john-oliver-hbo_article_story_large.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=sEotafqxFI4'
	})

c2 = Comedian.create({
	name: 'Hannibal Burress',
	image: 'https://consequenceofsound.files.wordpress.com/2014/10/hannibal-buress-2.jpg',
	youtube_url: 'https://consequenceofsound.files.wordpress.com/2014/10/hannibal-buress-2.jpg'
	})

c3 = Comedian.create({
	name: 'Dave Chappelle',
	image: 'http://api.ning.com/files/7WaW*6Bsqz0AzPn7jpDmWx1vrNQcwojhJvf8wrE8-FihxMV5ix747HpcmA51YZWmTWpV2Govk1oY2bRHiRKsOjR9zG4PPdDX/119747432e1371518463818.jpg',
	youtube_url: 'https://www.youtube.com/embed/LLWlBgj0uOc'
	})

c1 = Comedian.create({
	name: 'Amy Schumer',
	image: 'http://cdn.thedailybeast.com/content/dailybeast/articles/2014/03/31/comedy-s-r-rated-queen-amy-schumer-is-raunchier-than-ever/jcr:content/image.img.2000.jpg/1396277014165.cached.jpg',
	youtube_url: 'https://www.youtube.com/watch?v=YEXmu89_E8o'
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
