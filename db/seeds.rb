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
Favorite.destroy_all
Review.destroy_all
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users..."
User.new(email: "admin@exemple.com", password: "123456", first_name: "Toto", last_name: "Tata", age: 63, avatar_url: "https://images6.fanpop.com/image/photos/33100000/Snoopy-wallpaper-snoopy-33124746-1024-768.jpg").save!
User.new(email: "nicolemanzotti@exemple.com", password: "nicolemanzotti", first_name: "Nicole", last_name: "Manzotti", age: 81, avatar_url: "https://rscj.org/files/mary_louise_mamie_jenkins_rscj_-_copy.jpg").save!
User.new(email: "jeanrenault@exemple.com", password: "jeanrenault", first_name: "Jean", last_name: "Renault", age: 71, avatar_url: "https://hotnewsinworld.com/fr/wp-content/uploads/sites/12/2020/11/Ce-nest-pas-un-petit-blanc-bec-de-56-ans-qui-va.jpg").save!
User.new(email: "jeffvernet@exemple.com", password: "jeffvernet", first_name: "Jeff", last_name: "Vernet", age: 71, avatar_url: "https://img.freepik.com/photos-premium/photo-recadree-jeune-homme-dans-son-fauteuil-roulant-cree-ia-generative_762026-24180.jpg
  ").save!



puts "Creating flats..."
Flat.new(name: "Chambre agréable en plein Paris", location: "Paris", description: "Nice flat", price_per_month: 500, autonomy_level: 3, user_id: User.last.id, pictures: "https://www.immojeunepro.com/bundles/boresidence/uploads/documents/760x475/98b28a71f210e42e76673dd4029a76c098380d13-760x475.jpeg").save!
Flat.new(name: "Looking for some young company", location: "London", description: "Cozy flat", price_per_month: 400, autonomy_level: 2, user_id: User.last.id, pictures: "https://www.studylease.co.uk/files/residences/residences/images/image_nexity_PO0000062_5ad73d85709e24_PO0000062_90.jpg" ).save
Flat.new(name: "Room available close to NYU", location: "New York", description: "Spacious flat", price_per_month: 600, autonomy_level: 4, user_id: User.last.id, pictures: "https://www.passman.fr/wp-content/uploads/2023/10/passenergy-residence-etudiante-e1696258374658.jpg").save
Flat.new(name: "Zimmer für Studenten zu vermieten", location: "Berlin", description: "Modern flat", price_per_month: 400, autonomy_level: 3, user_id: User.last.id, pictures: "https://www.student-factory.com/media/457/download/StudentFactory_Nice_DSF8115-HDR.jpg?v=1").save
Flat.new(name: "学生向けのレンタルルーム", location: "Tokyo", description: "Compact flat", price_per_month: 300, autonomy_level: 1, user_id: User.last.id, pictures: "https://thumbs.dreamstime.com/z/chambre-%C3%A0-coucher-de-style-de-l-%C3%A9tudiant-simple-de-dortoir-avec-un-bon-nombre-de-lumi%C3%A8re-79798617.jpg").save
Flat.new(name: "My elderly mother looking for a student", location: "Sydney", description: "Sunny flat", price_per_month: 350, autonomy_level: 2, user_id: User.last.id, pictures: "https://amazingarchitecture.com/storage/1790/student_room.jpg").save
Flat.new(name: "stanza in affitto per studenti LUISS", location: "Rome", description: "Historic flat", price_per_month: 300, autonomy_level: 3, user_id: User.last.id, pictures: "https://www.new.ox.ac.uk/sites/default/files/inline-images/Bedroom_0.JPG").save
Flat.new(name: "se alquila habitacion", location: "Madrid", description: "Central flat", price_per_month: 600, autonomy_level: 4, user_id: User.last.id, pictures: "https://www.nottingham.ac.uk/accommodation/images-multimedia/new-test/room-3.jpg").save
Flat.new(name: "Amazing clean room next to McGill UNI", location: "Toronto", description: "Suburban flat", price_per_month: 250, autonomy_level: 1, user_id: User.last.id, pictures: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e800a328914065.55d8b7ced5d02.jpg").save
Flat.new(name: "Room available", location: "Dubai", description: "Luxury flat", price_per_month: 800, autonomy_level: 5, user_id: User.last.id, pictures: "https://www.cityblock.co.uk/blog/wp-content/uploads/2022/11/34-1024x684.jpg").save
Flat.new(name: "Looking for a calm student", location: "Singapore", description: "High-rise flat", price_per_month: 400, autonomy_level: 3, user_id: User.last.id, pictures: "https://www.vitastudent.com/wp-content/uploads/2023/01/VITASTUDENT_PROFILES_NOV2021_130-scaled.jpg").save

puts "Creating bookings..."
Booking.new(start_date: "2021-01-01", end_date: "2021-01-31", flat_id: Flat.second.id, user_id: User.last.id).save!
Booking.new(start_date: "2021-02-01", end_date: "2021-02-28", flat_id: Flat.first.id, user_id: User.last.id).save

puts "Creating reviews..."
Review.new(content: "super appartment", rating: 5, booking_id: Booking.first.id).save!

puts "Creating favorites..."
Favorite.new(flat_id: Flat.first.id, user_id: User.last.id).save!

puts "all done!"
