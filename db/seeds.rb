# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create some rooms
rooms = [
  { name: 'Deluxe Room', description: 'A luxurious room with a king-size bed', price: 100 },
  { name: 'Standard Room', description: 'A comfortable room with a queen-size bed', price: 80 },
  { name: 'Suite', description: 'A spacious room with a living area and a king-size bed', price: 150 }
]

rooms.each do |room|
  Room.create!(room)
end

# Create some users
users = [
  { email: 'admin@example.com', password: 'password', password_confirmation: 'password' },
  { email: 'user1@example.com', password: 'password', password_confirmation: 'password' },
  { email: 'user2@example.com', password: 'password', password_confirmation: 'password' }
]

users.each do |user|
  User.create!(user)
end

# Create some bookings
bookings = [
  { user_id: 1, room_id: 1, start_date: '2024-06-20', end_date: '2024-06-22' },
  { user_id: 2, room_id: 2, start_date: '2024-06-21', end_date: '2024-06-23' },
  { user_id: 3, room_id: 3, start_date: '2024-06-22', end_date: '2024-06-24' }
]

bookings.each do |booking|
  Booking.create!(booking)
end
