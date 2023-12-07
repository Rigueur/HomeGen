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
User.new(email: "admin@exemple.com", password: "123456", first_name: "Bernard", last_name: "Epailly", age: 73, avatar_url: "https://ekladata.com/npK_9LGihkpXqCVjk9U1aCp0gzU.jpg", biography: "Bernard, un gentleman à la retraite passionné de jardinage et de musique classique, vous accueille dans son appartement chaleureux. Sa générosité se reflète dans ses délicieux plats faits maison. Amoureux de la lecture, Bernard propose également une bibliothèque bien garnie. N'hésitez pas à lui demander des conseils pour vos activités à proximité.").save!

User.new(email: "nicolemanzotti@exemple.com", password: "nicolemanzotti", first_name: "Nicole", last_name: "Manzotti", age: 81, avatar_url: "https://rscj.org/files/mary_louise_mamie_jenkins_rscj_-_copy.jpg", biography: "Nicole, une dame pleine de vie, ouvre les portes de son chez-soi empreint d'élégance. Ancienne professeure d'art, elle propose des ateliers de peinture relaxants. Nicole aime partager des histoires autour d'une tasse de thé. Elle offre une ambiance conviviale et est prête à vous guider pour découvrir la ville.").save!

User.new(email: "jeanrenault@exemple.com", password: "jeanrenault", first_name: "Jean", last_name: "Renault", age: 71, avatar_url: "https://hotnewsinworld.com/fr/wp-content/uploads/sites/12/2020/11/Ce-nest-pas-un-petit-blanc-bec-de-56-ans-qui-va.jpg", biography: "Jean, passionné de cinéma et d'histoire, offre un séjour agréable dans son appartement confortable. Amateur de balades à vélo, il prête volontiers ses deux-roues pour explorer les environs. Jean est également un excellent cuisinier et propose des plats régionaux. Une chance de découvrir la culture locale avec lui.").save!

User.new(email: "sauveurdoukhan@exemple.com", password: "sauveurdoukhan", first_name: "Sauveur", last_name: "Doukhan", age: 89, avatar_url: "https://img-4.linternaute.com/2drQb-wwJernLdw3B-D1E1VOBh0=/1443x/smart/d124e3eb9b71475cb08cea94aa74e989/ccmcms-linternaute/41540177.jpg", biography: "Sauveur, homme sage et bienveillant, ouvre son foyer avec un amour infini pour la cuisine méditerranéenne. Il aime partager des anecdotes de voyages et offre son aide pour tout ce dont vous pourriez avoir besoin. Si vous êtes amateur de musique orientale, vous serez ravi de ses suggestions mélodieuses.").save!

User.new(email: "moniquehardy@exemple.com", password: "moniquehardy", first_name: "Monique", last_name: "Hardy", age: 76, avatar_url: "https://d27790xjhw2fza.cloudfront.net/as/assets-mem-com/cmi/7/9/3/8/7218397/20161221_150559358_0_orig.jpg/-/monique-hardy-concord-nh-photos1.jpg", biography: "Monique, une grand-mère joyeuse, vous accueille dans une atmosphère douce et accueillante. Elle propose des après-midis de détente dans son jardin fleuri. Monique est une passionnée de jeux de société, une occasion parfaite de partager des moments conviviaux.").save!

User.new(email: "ginettejacquard@exemple.com", password: "ginettejacquard", first_name: "Ginette", last_name: "Jacquard", age: 65, avatar_url: "https://resize-elle.ladmedia.fr/rcrop/1098,768/img/var/plain_site/storage/images/societe/news/une-grand-mere-atteinte-d-un-cancer-devient-la-star-d-instagram-2689254/46790536-1-fre-FR/Une-grand-mere-atteinte-d-un-cancer-devient-la-star-d-Instagram.jpg", biography: "Ginette, dynamique et sportive, vous offre un séjour actif avec l'accès à ses vélos. Elle adore cuisiner des plats sains et propose des recettes nutritives. Ginette est également une excellente guide pour explorer les activités locales.").save!

User.new(email: "fraçfrez@exemple.com", password: "freafa", first_name: "Françoise", last_name: "Orliac", age: 92, avatar_url: "https://media1.ledevoir.com/images_galerie/nwd_478252_335829/image.jpg", biography: "Françoise, une femme pleine de sagesse, vous accueille dans son havre de paix. Elle partage son amour pour la littérature classique et propose des soirées de lecture paisibles. Françoise est également une fine cuisinière, prête à vous faire découvrir des saveurs traditionnelles.").save!

User.new(email: "hjjojj@exemple.com", password: "hjknkj", first_name: "Jacques", last_name: "Audiard", age: 76, avatar_url: "https://i1.sndcdn.com/artworks-MAEn1mVg7raGKamd-5aCtVg-t500x500.jpg", biography: "Jacques, un homme de cinéma, ouvre son chez-soi avec une passion pour les films classiques. Amateur de discussions animées, Jacques offre un séjour culturel. Il propose également des séances de cinéma maison pour une expérience immersive.").save!

User.new(email: "hbjknjk@exemple.com", password: "bhhjbjk", first_name: "Rodrigue", last_name: "Sauciflard", age: 83, avatar_url: "https://www.gala.fr/imgre/fit/~1~gal~2021~04~14~d072716d-b5da-4434-9592-e5ee04c0aab0.jpeg/420x420/quality/80/focus-point/403%2C184/william-leymergie-bientot-grand-pere-pour-la-4e-fois-il-jubile.jpg", biography: "Rodrigue, un homme jovial, vous accueille avec une touche d'humour dans son logement convivial. Passionné de cuisine du terroir, il vous invite à découvrir des plats traditionnels. Rodrigue est également prêt à partager ses connaissances sur la région.").save!

User.new(email: "gbhjbhkjl@exemple.com", password: "cfdtgvyhubj", first_name: "Charles", last_name: "Auguste", age: 79, avatar_url: "https://sf1.closermag.fr/wp-content/uploads/closermag/2023/04/Gerard-Jugnot-est-grand-pere-582x410.jpg", biography: "Charles, un gentleman raffiné, vous ouvre les portes de son appartement élégant. Amateur d'art, il propose des visites guidées des musées locaux. Charles offre une atmosphère détendue pour apprécier la culture et l'histoire.").save!

User.new(email: "retdguyz@exemple.com", password: "fadhfa", first_name: "Emile", last_name: "Guartiant", age: 78, avatar_url: "https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/societe/affaire-iacono-gabriel-demande-pardon-a-son-grand-pere-756648/15177078-1-fre-FR/Affaire-Iacono-Gabriel-demande-pardon-a-son-grand-pere.jpg", biography: "Emile, une personne attentionnée, vous accueille avec une hospitalité chaleureuse. Amateur de jardinage, il propose des après-midis relaxants dans son jardin fleuri. Emile est également prêt à offrir son aide pour faciliter votre séjour.").save!


User.new(email: "jeffvernet@exemple.com", password: "jeffvernet", first_name: "Jeff", last_name: "Vernet", age: 22, avatar_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1697800846/bcep0g1utxoxdrzmviye.jpg").save!
User.new(email: "naomidoukhan@exemple.com", password: "naomidoukhan", first_name: "Naomi", last_name: "Doukhan", age: 24, avatar_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1697727803/rat144jgorblxyngfyvw.jpg").save!

Geocoder.configure(timeout: 5)

puts "Creating flats..."

Flat.new(name: "Chambre agréable en plein Paris",
  location: "131 boulevard de grenelle, 75015, Paris",
  description: "Chambre lumineuse et spacieuse disponible dans un appartement partagé. Idéalement située, proche des transports en commun et des commodités locales. Parfait pour les étudiants ou les jeunes professionnels. L'appartement est entièrement meublé et équipé avec une cuisine moderne et une salle de bain rénovée.",
  price_per_month: 500,
  autonomy_level: 3,
  user_id: User.all[1].id,
  pictures: ["https://a0.muscache.com/im/pictures/miso/Hosting-867276180164542060/original/a8478dbd-6309-4665-a7cf-4d58ed2272a2.jpeg?im_w=1200",
    "https://a0.muscache.com/im/pictures/b9f95931-03cf-4619-8cb1-7ec6aee2ed56.jpg?im_w=720",
    "https://a0.muscache.com/im/pictures/miso/Hosting-853608306007509621/original/19a3edad-d946-4634-b36b-8772d7035405.jpeg?im_w=720",
    "https://a0.muscache.com/im/pictures/miso/Hosting-867276180164542060/original/13b9dd63-04b4-43c4-b607-40d2b3a4ad31.jpeg?im_w=720",
    "https://a0.muscache.com/im/pictures/miso/Hosting-867276180164542060/original/8ff8932a-1b56-4aff-899a-35f2e4ea1c46.jpeg?im_w=720"]).save!
puts "1"

Flat.new(name: "Charme près transports",
  location: "22 Rue de la République, 75001 Paris",
  description: "Chambre claire et vaste à louer dans un appartement en colocation. Emplacement idéal à proximité des transports publics et des services de proximité. Parfait pour les étudiants ou les jeunes travailleurs. L'appartement est entièrement équipé avec une cuisine moderne et une salle de bain récemment rénovée",
  price_per_month: 400,
  autonomy_level: 2,
  user_id: User.all[2].id,
  pictures: ["https://a0.muscache.com/im/pictures/79b46023-fa24-4914-8a3a-bf47a5bafabe.jpg?im_w=1200",
    "https://a0.muscache.com/im/pictures/96496792-9965-47ed-a383-8ab0d083804f.jpg?im_w=720",
    "https://a0.muscache.com/im/pictures/a4002e08-d292-4186-bdb9-f266d01beac9.jpg?im_w=720",
    "https://a0.muscache.com/im/pictures/6ad08afc-d039-40ee-8b24-cf906e18902a.jpg?im_w=720",
    "https://a0.muscache.com/im/pictures/84afee39-ea2b-4cce-b306-8d93a13de6f2.jpg?im_w=720"]).save
puts "2"

Flat.new(name: "Vue panoramique centre",
  location: "34 Rue du Refuge, 13002 Marseille",
  description: "Location d'une chambre spacieuse et bien éclairée dans un appartement partagé. Située idéalement près des transports et des commodités locales. Idéale pour les étudiants ou les jeunes actifs. L'appartement est entièrement meublé et dispose d'une cuisine moderne et d'une salle de bain rénovée",
  price_per_month: 600,
  autonomy_level: 4,
  user_id: User.all[3].id,
  pictures: ["https://www.passman.fr/wp-content/uploads/2023/10/passenergy-residence-etudiante-e1696258374658.jpg"]).save
puts "3"

Flat.new(name: "Cosy proche campus", 
  location: "45 Avenue des Champs-Élysées, 75008 Paris", 
  description: "Chambre grande et lumineuse disponible dans une colocation. Emplacement privilégié à proximité des transports en commun et des commerces de proximité. Convient parfaitement aux étudiants ou aux jeunes professionnels. L'appartement est entièrement meublé et comprend une cuisine moderne et une salle de bain rénovée.",
  price_per_month: 400,
  autonomy_level: 3,
  user_id: User.all[4].id,
  pictures: ["https://www.student-factory.com/media/457/download/StudentFactory_Nice_DSF8115-HDR.jpg?v=1"]).save
puts "4"

Flat.new(name: "Spacieux quartier historique",
  location: "10 Rue du Faubourg Saint-Honoré, 75009 Paris",
  description: "Propose une chambre spacieuse et lumineuse dans un appartement en colocation. Emplacement stratégique proche des transports et des commodités. Idéal pour étudiants ou jeunes professionnels. L'appartement est entièrement meublé avec une cuisine moderne et une salle de bain rénovée.",
  price_per_month: 300,
  autonomy_level: 1,
  user_id: User.all[5].id,
  pictures: ["https://thumbs.dreamstime.com/z/chambre-%C3%A0-coucher-de-style-de-l-%C3%A9tudiant-simple-de-dortoir-avec-un-bon-nombre-de-lumi%C3%A8re-79798617.jpg"]).save
puts "5"

Flat.new(name: "Lumineux ambiance moderne",
  location: "30 Quai des Belges, 13001 Marseille",
  description: "Chambre vaste et bien éclairée à disposition dans un appartement partagé. Emplacement parfait, proche des transports en commun et des commodités du quartier. Parfait pour les étudiants ou les jeunes actifs. L'appartement est entièrement meublé et dispose d'une cuisine moderne et d'une salle de bain rénovée",
  price_per_month: 350,
  autonomy_level: 2,
  user_id: User.all[6].id,
  pictures: ["https://amazingarchitecture.com/storage/1790/student_room.jpg"]).save
puts "6"

Flat.new(name: "Confortable près commerces",
  location: "12 Pl. des Augustines, 13002 Marseille",
  description: "Chambre grande et lumineuse à louer dans une colocation. Idéalement située à proximité des transports en commun et des commerces locaux. Parfaite pour les étudiants ou les jeunes professionnels. L'appartement est entièrement meublé et équipé d'une cuisine moderne et d'une salle de bain rénovée.",
  price_per_month: 300,
  autonomy_level: 3,
  user_id: User.all[7].id,
  pictures: ["https://www.new.ox.ac.uk/sites/default/files/inline-images/Bedroom_0.JPG"]).save
puts "7"

Flat.new(name: "Studio élégant meublé",
  location: "10 Place Bellecour, 69002 Lyon",
  description: "Grande et lumineuse chambre disponible en colocation. Emplacement idéal à deux pas des transports en commun et des commerces locaux. Parfait pour étudiants et jeunes professionnels. Appartement entièrement meublé, cuisine moderne et salle de bain récemment rénovée.", price_per_month: 600, autonomy_level: 4, user_id: User.all[8].id, pictures: "https://www.nottingham.ac.uk/accommodation/images-multimedia/new-test/room-3.jpg").save
puts "8"

Flat.new(name: "Calme, vue jardin",
  location: "25 Rue de la République, 69003 Lyon",
  description: "Location d'une spacieuse chambre lumineuse au sein d'une colocation bien située, proche des transports et des commerces. Convient parfaitement aux étudiants et jeunes actifs. Appartement entièrement meublé, cuisine moderne et salle de bain récemment refaite.", price_per_month: 250, autonomy_level: 1, user_id: User.all[0].id, pictures: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e800a328914065.55d8b7ced5d02.jpg").save
puts "9"

Flat.new(name: "Chambre étudiant idéale",
  location: "18 Quai Pierre-Scize, 69009 Lyon",
  description: "À louer, une grande chambre lumineuse dans une colocation idéalement située à proximité des transports et des commerces locaux. Parfaite pour les étudiants et jeunes professionnels. Appartement entièrement meublé avec cuisine moderne et salle de bain récemment rénovée.", price_per_month: 800, autonomy_level: 5, user_id: User.all[9].id, pictures: "https://www.cityblock.co.uk/blog/wp-content/uploads/2022/11/34-1024x684.jpg").save
puts "10"

Flat.new(name: "Cherche Etudiant Discret!",
  location: "5 Place de la Bastille, 75012 Paris",
  description: "Chambre spacieuse et lumineuse disponible en colocation. Emplacement idéal à proximité des transports en commun et des commerces locaux, parfait pour les étudiants et jeunes professionnels. Appartement entièrement meublé, cuisine moderne et salle de bain rénovée.", price_per_month: 400, autonomy_level: 3, user_id: User.all[9], pictures: "https://www.vitastudent.com/wp-content/uploads/2023/01/VITASTUDENT_PROFILES_NOV2021_130-scaled.jpg").save

puts "Creating bookings..."
Booking.new(start_date: "2021-01-01", end_date: "2021-01-31", flat_id: Flat.all[9].id, user_id: User.all[11].id).save!
Booking.new(start_date: "2021-02-01", end_date: "2021-02-28", flat_id: Flat.all[3].id, user_id: User.all[12].id).save
Booking.new(start_date: "2022-01-15", end_date: "2022-02-28", flat_id: Flat.all[7].id, user_id: User.all[12].id).save!
Booking.new(start_date: "2022-03-10", end_date: "2022-04-20", flat_id: Flat.all[3].id, user_id: User.all[11].id).save!
Booking.new(start_date: "2022-05-05", end_date: "2022-06-15", flat_id: Flat.all[9].id, user_id: User.all[12].id).save!
Booking.new(start_date: "2022-07-01", end_date: "2022-08-10", flat_id: Flat.all[5].id, user_id: User.all[11].id).save!
Booking.new(start_date: "2022-12-12", end_date: "2023-01-25", flat_id: Flat.all[1].id, user_id: User.all[11].id).save!
Booking.new(start_date: "2023-02-18", end_date: "2023-03-30", flat_id: Flat.all[8].id, user_id: User.all[12].id).save!
Booking.new(start_date: "2023-02-18", end_date: "2023-03-30", flat_id: Flat.all[8].id, user_id: User.all[12].id).save!
Booking.new(start_date: "2023-06-10", end_date: "2023-07-20", flat_id: Flat.all[6].id, user_id: User.all[12].id).save!
Booking.new(start_date: "2023-04-15", end_date: "2023-05-28", flat_id: Flat.all[2].id, user_id: User.all[11].id).save!

puts "Creating reviews..."
Review.new(content: "Appartement incroyablement confortable et bien meublé. Séjour excellent !", rating: 5, booking_id: Booking.all[3].id).save!
Review.new(content: "Endroit charmant avec une vue fantastique. J'ai adoré chaque instant de mon séjour.", rating: 4, booking_id: Booking.all[7].id).save!
Review.new(content: "Emplacement idéal, chambre spacieuse et hôtes sympathiques. Hautement recommandé !", rating: 5, booking_id: Booking.all[2].id).save!
Review.new(content: "Propre et confortable. Parfait pour un séjour relaxant. Je reviendrai !", rating: 4, booking_id: Booking.all[9].id).save!
Review.new(content: "Ambiance charmante, proche de tout. Une expérience merveilleuse dans l'ensemble.", rating: 5, booking_id: Booking.all[4].id).save!
Review.new(content: "Design moderne, quartier calme. Impressionné par les commodités.", rating: 4, booking_id: Booking.all[1].id).save!
Review.new(content: "Idéal pour les étudiants ! Chambre confortable, excellent environnement d'étude.", rating: 3, booking_id: Booking.all[5].id).save!
Review.new(content: "Vue exceptionnelle sur le jardin, paisible et serein. Je recommanderai à mes amis.", rating: 5, booking_id: Booking.all[6].id).save!
Review.new(content: "Emplacement parfait près des sites historiques. Chambre spacieuse et confortable.", rating: 4, booking_id: Booking.all[8].id).save!
Review.new(content: "Séjour exceptionnel, hôtes fantastiques. On se sentait comme chez soi loin de chez soi.", rating: 5, booking_id: Booking.all[8].id).save!
Review.new(content: "Charmant studio avec tout le nécessaire. Séjour agréable et hôte sympathique.", rating: 4, booking_id: Booking.all[0].id).save!


puts "Creating favorites..."
Favorite.new(flat_id: Flat.first.id, user_id: User.last.id).save!

puts "all done!"
