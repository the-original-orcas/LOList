# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comedians = ["Kevin Hart", "Louis C.K.", "Aziz Ansari", "Jim Gaffigan", "Sarah Silverman", "Chelsea Peretti", "Nick Kroll", "Daniel Tosh", "John Oliver", "Hannibal Burress", "Dave Chappelle", "Amy Schumer"] 

Comedian.create({
	name: 'Kevin Hart',
	image: 'http://www.bet.com/topics/k/kevin-hart/_jcr_content/topicintro.topicintro.dimg/010313-shows-real-husbands-hollywood-rhoh-press-kevin-hart-2.jpg'
	})

Comedian.create({
	name: 'Louie C.K.',
	image: 'http://coolmaterial.com/wp-content/uploads/2013/10/louis-ck-oh-my-god.jpg'
	})

Comedian.create({
	name: 'Aziz Ansari',
	image: 'http://25.media.tumblr.com/tumblr_m3p31qUFSa1qz7f9to1_1280.jpg'
	})

Comedian.create({
	name: 'Jim Gaffigan',
	image: 'http://media.livenation.com/artists/78250/78250-show-65737.jpg?1374689257'
	})

Comedian.create({
	name: 'Sarah Silverman',
	image: 'https://flavorwire.files.wordpress.com/2013/04/sarah-silverman1.jpg'
	})

Comedian.create({
	name: 'Chelsea Peretti',
	image: 'http://cdn.splitsider.com/wp-content/uploads/2014/09/chelsea_peretti_bk99_s2.jpg'
	})

Comedian.create({
	name: 'Nick Kroll',
	image: 'http://www.foodrepublic.com/sites/default/files/imagecache/enlarge/singlepage/Kroll.jpg'
	})

Comedian.create({
	name: 'Daniel Tosh',
	image: 'http://www.tvequals.com/wp-content/uploads/2010/08/Daniel-Tosh-2.jpg'
	})

Comedian.create({
	name: 'John Oliver',
	image: 'http://cdn.hitfix.com/photos/5496125/john-oliver-hbo_article_story_large.jpg'
	})

Comedian.create({
	name: 'Hannibal Burress',
	image: 'http://media.chicagomag.com//images/cache/cache_7/cache_1/cache_1/C201404-Hannibal-Buress-preview-23742117.jpeg?ver=1415285056&aspectratio=0.75'
	})

Comedian.create({
	name: 'Dave Chappelle',
	image: 'http://api.ning.com/files/7WaW*6Bsqz0AzPn7jpDmWx1vrNQcwojhJvf8wrE8-FihxMV5ix747HpcmA51YZWmTWpV2Govk1oY2bRHiRKsOjR9zG4PPdDX/119747432e1371518463818.jpg'
	})

Comedian.create({
	name: 'Amy Schumer',
	image: 'http://cdn.thedailybeast.com/content/dailybeast/articles/2014/03/31/comedy-s-r-rated-queen-amy-schumer-is-raunchier-than-ever/jcr:content/image.img.2000.jpg/1396277014165.cached.jpg'
	})
