puts 'Clearing records...'
User.destroy_all
Instrument.destroy_all

puts 'Creating users...'
user1 = User.create!(email: 'user1@mail.com', password: 'password')
user2 = User.create!(email: 'user2@mail.com', password: 'password')
user3 = User.create!(email: 'user3@mail.com', password: 'password')
user4 = User.create!(email: 'user4@mail.com', password: 'password')
user5 = User.create!(email: 'user5@mail.com', password: 'password')

puts 'Creating instruments...'
Instrument.create!(
  brand: 'Fender',
  model: 'Stratocaster',
  category: 'Guitars',
  price: 100,
  user: user1
)
Instrument.create!(
  brand: 'Fender',
  model: 'Telecaster',
  category: 'Guitars',
  price: 120,
  user: user1
)
Instrument.create!(
  brand: 'Ibanez',
  model: 'Prestige',
  category: 'Basses',
  price: 50,
  user: user2
)
Instrument.create!(
  brand: 'Ibanez',
  model: 'Blazer',
  category: 'Basses',
  price: 30,
  user: user2
)
Instrument.create!(
  brand: 'Fender',
  model: 'Jazz',
  category: 'Basses',
  price: 60,
  user: user2
)