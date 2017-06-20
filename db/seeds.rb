# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
 name:  'La Carnita',
 address: '501 College St',
 city: 'Toronto',
 neighborhood: 'Little Italy',
 price_range: '$$ - $$$',
 summary: 'Authentic Tex-Mex tapas, perfect for sharing among a group of pals.',
 menu: 'http://www.lacarnita.com/'
)
puts "..."
Restaurant.create(
 name:  'Sotto Sotto',
 address: '120 Avenue Road',
 city: 'Toronto',
 neighborhood: 'Midtown',
 price_range: '$$$$',
 summary: 'Luxury Italian fare for a cinematic evening, complete with vino straight from Siena vineyards.',
 menu: 'http://www.sottosotto.ca/menus'
)
puts "..."
Restaurant.create(
 name:  'Cactus Club',
 address: '77 Adelaide St West',
 city: 'Toronto',
 neighborhood: 'Downtown Core',
 price_range: '$$$',
 summary: 'Global cuisine using the finest ingredients - experience the world at your plate.',
 menu: 'https://www.cactusclubcafe.com/menus/'
)
puts "..."
Restaurant.create(
 name:  'George Restaurant',
 address: '111 Queen St East',
 city: 'Toronto',
 neighborhood: 'Yonge & Queen',
 price_range: '$$$',
 summary: 'Farmer market dream, dishes are locally sourced for optimal flavour; George also boasts a robust vegetarian menu as well.',
 menu: 'http://georgeonqueen.ca/food-and-drink/'
)
puts "..."
Restaurant.create(
 name:  'Scaramouche',
 address: '1 Benvenuto Place',
 city: 'Toronto',
 neighborhood: 'Casa Loma',
 price_range: '$$$$',
 summary: 'A Skyline with your meal - airplane-esque but upscale, bring your bougie bod for a dinner with a view and without the air pressure.',
 menu: 'http://www.scaramoucherestaurant.com/wp-content/uploads/2016/04/Dining-Room-Menu.pdf'
)
puts "..."
Restaurant.create(
 name:  'Buonanotte',
 address: '19 Mercer Street',
 city: 'Toronto',
 neighborhood: 'Downtown West',
 price_range: '$$-$$$',
 summary: 'Ever wanted to eat a steak in a club? Take a bite, do a couple dabs on the dancefloor, and revisit your Italian dish - all in one space!',
 menu: 'http://www.buonanottetoronto.com/dinnermenu.pdf'
)
