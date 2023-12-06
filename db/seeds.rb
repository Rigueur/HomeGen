# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# cleaning the database
puts "Cleaning the database..."
Review.destroy_all
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users..."
User.new(email: "admin@exemple.com", password: "123456", first_name: "Toto", last_name: "Tata", age: 63, avatar_url: "https://images6.fanpop.com/image/photos/33100000/Snoopy-wallpaper-snoopy-33124746-1024-768.jpg").save!
User.new(email: "pipicaca@exemple.com", password: "pipicaca", first_name: "Pipi", last_name: "Caca", age: 19, avatar_url: "https://drawinghowtos.com/wp-content/uploads/2022/08/Poop-Emoji-colored.jpg").save!

puts "Creating flats..."
Flat.new(name: "Flat 1", location: "Paris", description: "Nice flat", price_per_month: 1000, autonomy_level: 3, user_id: User.last.id).save!
Flat.new(name: "Flat 2", location: "London", description: "Cozy flat", price_per_month: 1200, autonomy_level: 2, user_id: User.last.id).save
Flat.new(name: "Flat 3", location: "New York", description: "Spacious flat", price_per_month: 1500, autonomy_level: 4, user_id: User.last.id).save
Flat.new(name: "Flat 4", location: "Berlin", description: "Modern flat", price_per_month: 900, autonomy_level: 3, user_id: User.last.id).save
Flat.new(name: "Flat 5", location: "Tokyo", description: "Compact flat", price_per_month: 1100, autonomy_level: 1, user_id: User.last.id).save
Flat.new(name: "Flat 6", location: "Sydney", description: "Sunny flat", price_per_month: 1300, autonomy_level: 2, user_id: User.last.id).save
Flat.new(name: "Flat 7", location: "Rome", description: "Historic flat", price_per_month: 800, autonomy_level: 3, user_id: User.last.id).save
Flat.new(name: "Flat 8", location: "Madrid", description: "Central flat", price_per_month: 1000, autonomy_level: 4, user_id: User.last.id).save
Flat.new(name: "Flat 9", location: "Toronto", description: "Suburban flat", price_per_month: 700, autonomy_level: 1, user_id: User.last.id).save
Flat.new(name: "Flat 10", location: "Dubai", description: "Luxury flat", price_per_month: 2000, autonomy_level: 5, user_id: User.last.id).save
Flat.new(name: "Flat 11", location: "Singapore", description: "High-rise flat", price_per_month: 1800, autonomy_level: 3, user_id: User.last.id).save

puts "Creating bookings..."
Booking.new(start_date: "2021-01-01", end_date: "2021-01-31", flat_id: Flat.second.id, user_id: User.last.id).save!
Booking.new(start_date: "2021-02-01", end_date: "2021-02-28", flat_id: Flat.first.id, user_id: User.last.id).save

puts "Creating reviews..."
Review.new(content: "super appartment", rating: 5, booking_id: Booking.first.id).save!

puts "all done!"
