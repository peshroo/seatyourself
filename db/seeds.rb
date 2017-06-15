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
 menu: 'http://www.lacarnita.com/'
)
puts "..."
Restaurant.create(
 name:  'Sotto Sotto',
 address: '120 Avenue Road',
 city: 'Toronto',
 menu: 'http://www.sottosotto.ca/menus'
)
puts "..."
Restaurant.create(
 name:  'Cactus Club',
 address: '77 Adelaide St West',
 city: 'Toronto',
 menu: 'https://www.cactusclubcafe.com/menus/'
)
puts "..."
Restaurant.create(
 name:  'George Restaurant',
 address: '111 Queen St East',
 city: 'Toronto',
 menu: 'http://georgeonqueen.ca/food-and-drink/'
)
puts "..."
Restaurant.create(
 name:  'Scaramouche',
 address: '1 Benvenuto Place',
 city: 'Toronto',
 menu: 'http://www.scaramoucherestaurant.com/wp-content/uploads/2016/04/Dining-Room-Menu.pdf'
)
puts "..."
Restaurant.create(
 name:  'Buonanotte',
 address: '19 Mercer Street',
 city: 'Toronto',
 menu: 'http://www.buonanottetoronto.com/dinnermenu.pdf'
)
