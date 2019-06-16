puts 'Clearing records...'
User.destroy_all

puts 'Creating users...'
User.create!(email: 'user1@mail.com', password: 'password')
User.create!(email: 'user2@mail.com', password: 'password')
User.create!(email: 'user3@mail.com', password: 'password')
User.create!(email: 'user4@mail.com', password: 'password')
User.create!(email: 'user5@mail.com', password: 'password')
