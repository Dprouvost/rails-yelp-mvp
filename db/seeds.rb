# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [

  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '01 34 54 65 78',
    category:     'chinese'
  },
  {
    name:         'Chez Rene',
    address:      '78 rue des petits champs 75009 Paris',
    phone_number: '01 13 45 67 87',
    category:     'french'
  },  
  {
    name:         'Planete sushi',
    address:      '14 rue de lers 59510 Hem',
    phone_number: '03 20 89 76 85',
    category:     'japanese'
  },
  {
    name:         'Gino',
    address:      '23 rue gambetta 59000 Lille',
    phone_number: '03 20 98 77 54',
    category:     'italian'
  },
  {
    name:         'A la bonne frite',
    address:      '2347 rue de tier 2345 Tournai',
    phone_number: '02 09 87 45 76',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'