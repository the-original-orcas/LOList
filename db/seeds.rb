Comedian.create({
	name: 'Kevin Hart',
	image: 'http://i.imgur.com/xqIX6J0.jpg',
	youtube_url: 'https://www.youtube.com/embed/TTCgr3V_HhI'
	})

Comedian.create({
	name: 'Louis CK',
	image: 'http://i.imgur.com/Z0L6dGg.jpg',
	youtube_url: 'https://www.youtube.com/embed/mQUr2RkjykU'
	})

Comedian.create({
	name: 'Aziz Ansari',
	image: 'http://i.imgur.com/5zcWplX.jpg',
	youtube_url: 'https://www.youtube.com/embed/3oLuxhYO5cw'
	})

Comedian.create({
	name: 'Daniel Tosh',
	image: 'http://i.imgur.com/Qsmfugv.jpg',
	youtube_url: 'https://www.youtube.com/embed/W2zTQwWaPps'
	})

Comedian.create({
	name: 'Sarah Silverman',
	image: 'http://i.imgur.com/PUcpUy8.jpg',
	youtube_url: 'https://www.youtube.com/embed/nT3yLcqv_8Q'
	})

Comedian.create({
	name: 'Chelsea Peretti',
	image: 'http://i.imgur.com/afGSrOk.jpg',
	youtube_url: 'https://www.youtube.com/embed/fYXJYHAPT18'
	})

Comedian.create({
	name: 'Nick Kroll',
	image: 'http://i.imgur.com/aLUnohR.jpg',
	youtube_url: 'https://www.youtube.com/embed/kdcmSdwO2CE'
	})

c5 = Comedian.create({
	name: 'Jim Gaffigan',
	image: 'http://i.imgur.com/MznojsG.jpg',
	youtube_url: 'https://www.youtube.com/embed/N-i9GXbptog'
	})

c4 = Comedian.create({
	name: 'John Oliver',
	image: 'http://i.imgur.com/jarObAa.jpg',
	youtube_url: 'https://www.youtube.com/embed/DeQqe0oj5Ls'
	})

c2 = Comedian.create({
	name: 'Hannibal Burress',
	image: 'http://i.imgur.com/l4s9Or7.jpg',
	youtube_url: 'https://www.youtube.com/embed/BklmMSEYRgk'
	})

c3 = Comedian.create({
	name: 'Dave Chappelle',
	image: 'http://i.imgur.com/w2hyfFe.jpg',
	youtube_url: 'https://www.youtube.com/embed/LLWlBgj0uOc'
	})

c1 = Comedian.create({
	name: 'Amy Schumer',
	image: 'http://i.imgur.com/VoBG977.jpg',
	youtube_url: 'https://www.youtube.com/embed/YEXmu89_E8o'
	})

u1 = User.create({
	email: 'daniel.snider87@gmail.com',
	password: '12312313',
	postal_code: '10001'
	})

u2 = User.create({
	email: 'sol@gmail.com',
	password: '123123123',
	postal_code: '10001'
	})

u3 = User.create({
	email: 'user@email.com',
	password: '123123',
	postal_code: '97217'
	})

u3.comedians = [c1,c2,c3,c5]
u2.comedians = [c3,c4]
u1.comedians = [c1,c2,c3,c4]
u2.save
u1.save

# e1 = Event.create({
# 	date: "2015-21-03",
# 	time: "12:00",
# 	venue: "MSG",
# 	price: 45.00,
# 	postal_code: '10001',
# 	comedian_id: c3.id
# 	})


# e2 = Event.create({
# 	date: "2015-22-03",
# 	time: "18:00",
# 	venue: "Best Buy Theater",
# 	price: 60.00,
# 	postal_code: '10001',
# 	comedian_id: c3.id
# 	})

# Event.create({
# 	date: "2015-22-07",
# 	time: "7:00",
# 	venue: "Wells Fargo Center for the Art",
# 	price: 119.00,
# 	postal_code: '10001',
# 	comedian_id: c1.id
# 	})

# Event.create({
# 	date: "2015-23-07",
# 	time: "7:00",
# 	venue: "Mountain Winery",
# 	price: 111.00,
# 	postal_code: '10001',
# 	comedian_id: c1.id
# 	})

# Event.create({
# 	date: "2015-18-04",
# 	time: "8:00",
# 	venue: "Ryman Auditorium",
# 	price: 52.00,
# 	postal_code: '10001',
# 	comedian_id: c4.id
# 	})

# Event.create({
# 	date: "2015-24-04",
# 	time: "10:00",
# 	venue: "Terry Fator Theatre at Mirage Hotel and Casino",
# 	price: 143.00,
# 	postal_code: '10001',
# 	comedian_id: c4.id
# 	})

# Event.create({
# 	date: "2015-09-06",
# 	time: "7:00",
# 	venue: "Collins Center for the Arts",
# 	price: 93.00,
# 	postal_code: '10001',
# 	comedian_id: c4.id
# 	})

# Event.create({
# 	date: "2015-13-06",
# 	time: "7:00",
# 	venue: "Merrill Auditorium",
# 	price: 106.00,
# 	postal_code: '10001',
# 	comedian_id: c3.id
# 	})

# Event.create({
# 	date: "2015-25-04",
# 	time: "9:00",
# 	venue: "Grand Sierra Resort and Casino",
# 	price: 159.00,
# 	city: "Reno",
# 	state_code: "NV",
# 	postal_code: "89595"
# 	})

# Event.create({
# 	date: "2015-19-03",
# 	time: "7:00",
# 	venue: "Santa Cruz Civic Auditorium",
# 	price: 166.00,
# 	city: "Santa Cruz",
# 	state_code: "CA",
# 	postal_code: "95060"
# 	})

# Event.create({
# 	date: "2015-29-03",
# 	time: "7:00",
# 	venue: "Comerica Theatre",
# 	price: 152.00,
# 	city: "Phoenix",
# 	state_code: "AZ",
# 	postal_code: "85003"
# 	})

# Event.create({
# 	date: "2015-29-03",
# 	time: "7:30",
# 	venue: "Bryce Jordan Center",
# 	price: 61.00,
# 	city: "University Park",
# 	state_code: "PA",
# 	postal_code: "16802"
# 	})

# Event.create({
# 	date: "2015-17-07",
# 	time: "9:30",
# 	venue: "McCaw Hall",
# 	price: 84.00,
# 	city: "Seattle",
# 	state_code: "WA",
# 	postal_code: "98109"
# 	})

# Event.create({
# 	date: "2015-21-07",
# 	time: "7:00",
# 	venue: "Redding Convention Center",
# 	price: 88.00,
# 	city: "Redding",
# 	state_code: "CA",
# 	postal_code: "96001"
# 	})

# Event.create({
# 	date: "2015-22-07",
# 	time: "7:00",
# 	venue: "Wells Fargo Center for the Art",
# 	price: 119.00,
# 	city: "Santa Rosa",
# 	state_code: "CA",
# 	postal_code: "95403"
# 	})

# Event.create({
# 	date: "2015-23-07",
# 	time: "7:00",
# 	venue: "Mountain Winery",
# 	price: 111.00,
# 	city: "Saratoga",
# 	state_code: "CA",
# 	postal_code: "95070"
# 	})

# Event.create({
# 	date: "2015-18-04",
# 	time: "8:00",
# 	venue: "Ryman Auditorium",
# 	price: 52.00,
# 	city: "Nashville",
# 	state_code: "TN",
# 	postal_code: "37219"
# 	})

# Event.create({
# 	date: "2015-24-04",
# 	time: "10:00",
# 	venue: "Terry Fator Theatre at Mirage Hotel and Casino",
# 	price: 143.00,
# 	city: "Las Vegas",
# 	state_code: "NV",
# 	postal_code: "89109"
# 	})

# Event.create({
# 	date: "2015-09-06",
# 	time: "7:00",
# 	venue: "Collins Center for the Arts",
# 	price: 93.00,
# 	city: "Orono",
# 	state_code: "ME",
# 	postal_code: "04469"
# 	})

# Event.create({
# 	date: "2015-13-06",
# 	time: "7:00",
# 	venue: "Merrill Auditorium",
# 	price: 106.00,
# 	city: "Portland",
# 	state_code: "ME",
# 	postal_code: "04101"
# 	})





