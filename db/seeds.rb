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
    phone_number: '03 45 658 943',
    category: 'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: 'french',
    phone_number: '05 56 89 54 32'
  },
  {
    name:         'Fufu',
    address:      'Rue St Rémi',
    phone_number: '05 45 658 923',
    category: 'japanese'
  },
  {
    name:         'Pizza Nico',
    address:      'Cours Balguerie Stuttenberg',
    category: 'italian',
    phone_number: '05 56 33 54 98'
  },
  {
    name:         'Ecko',
    address:      'Place Saint Pierre',
    category: 'french',
    phone_number: '05 56 23 14 98'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'

reviews_data = [
  {
    content:  'Pizzeria de mauvaise qualité.',
    rating:        2,
  },
  {
    content: 'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    rating:        5
  }
]

Restaurant.all.each do |restaurant|
  rand(1..3).times do
    restaurant.reviews.create(reviews_data.sample)
  end
end
