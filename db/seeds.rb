# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...🧹'
Restaurant.destroy_all

puts 'Creating restaurants...🏋️‍♀️'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '020 7420 9324',
    category: 'Chinese'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+44 20 7729 1888',
    category: 'Italian'
  },
  {
    name: 'Waffles',
    address: '60 Shoreditch High St, London E1 6PQ',
    phone_number: '+44 20 7729 5000',
    category: 'Belgian'
  },
  {
    name: 'Le Croissant',
    address: '1204 Toorak Rd, Camberwell VIC 3124',
    phone_number: '(03) 9809 2263',
    category: 'French'
  },
  {
    name: 'Sushi Salsa',
    address: '119 Swan St, Richmond VIC 3121',
    phone_number: '(03) 9428 1887',
    category: 'Japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts "Finished! Created #{Restaurant.count} restaurants 🍕"
