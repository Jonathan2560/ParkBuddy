require "open-uri"
puts "Cleaning previous data"
Reservation.destroy_all
Garage.destroy_all
User.destroy_all

puts "Creating users...."
user1 = User.create!(email: "pedro@mail.com", password: "123456")
user2 = User.create!(email: "pauline@mail.com", password: "123456")
user3 = User.create!(email: "john@mail.com", password: "123456")
user4 = User.create!(email: "caro@mail.com", password: "123456")
user5 = User.create!(email: "nicolas@mail.com", password: "123456")
user6 = User.create!(email: "benjamin@mail.com", password: "123456")
user7 = User.create!(email: "yassir@mail.com", password: "123456")
user8 = User.create!(email: "gauthier@mail.com", password: "123456")
user9 = User.create!(email: "tatiana@mail.com", password: "123456")
user10 = User.create!(email: "hélène@mail.com", password: "123456")
user11 = User.create!(email: "sofia@mail.com", password: "123456")
user12 = User.create!(email: "diane@mail.com", password: "123456")
user13 = User.create!(email: "juan@mail.com", password: "123456")
user14 = User.create!(email: "harold@mail.com", password: "123456")
user15 = User.create!(email: "maryline@mail.com", password: "123456")
user16 = User.create!(email: "damien@mail.com", password: "123456")
user17 = User.create!(email: "tom@mail.com", password: "123456")
user18 = User.create!(email: "louis@mail.com", password: "123456")
user19 = User.create!(email: "gaston@mail.com", password: "123456")
user20 = User.create!(email: "lorenz@mail.com", password: "123456")

puts "Users created"

# Adding new garage
garage1 = Garage.new(name:"Pauline's parking",
  address: "rue Saint-Bernard 94, 1060 Saint-Gilles",
  width:250,
  length:450,
  price_per_minute: 0.39,
  user: user1)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage1.png')
  file = File.open(image_path)
  garage1.photo.attach(io: file, filename: "garage1.png", content_type: "image/png")
  garage1.save!

  puts "Created #{garage1}"

garage2 = Garage.new(name: "Jonathan's parking",
  address: "Vogelzang 158, 1160 Oudergem",
  width:230,
  length:400,
  price_per_minute:0.20,
  user: user2)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage2.png')
  file = File.open(image_path)
  garage2.photo.attach(io: file, filename: "garage2.png", content_type: "image/png")
  garage2.save!

  puts "Created #{garage2}"


garage3 = Garage.new(name:"Pedro's parking",
  address: "Léopold Wienerlaan 6, 1170 Watermaal-Bosvoorde",
  width:250,
  length:400,
  price_per_minute:0.18,
  user: user3)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage3.png')
  file = File.open(image_path)
  garage3.photo.attach(io: file, filename: "garage3.png", content_type: "image/png")
  garage3.save!

  puts "Created #{garage3}"

garage4 = Garage.new(name:"Caro's parking",
  address: "Avenue de Tervueren 137, 1150 Woluwe-Saint-Pierre",
  width:200,
  length:390,
  price_per_minute:0.25,
  user: user4)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage4.png')
  file = File.open(image_path)
  garage4.photo.attach(io: file, filename: "garage4.png", content_type: "image/png")
  garage4.save!

  puts "Created #{garage4}"

garage5 = Garage.new(name:"Nicolas's parking",
  address: "Rue Leekaerts 29, 1140 Evere",
  width:205,
  length:385,
  price_per_minute:0.25,
  user: user5)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage5.png')
  file = File.open(image_path)
  garage5.photo.attach(io: file, filename: "garage5.png", content_type: "image/png")
  garage5.save!

  puts "Created #{garage5}"

garage6 = Garage.new(name:"Benjamin's parking",
  address: "Rue de Livourne 116, 1050 Ixelles",
  width:195,
  length:387,
  price_per_minute:0.28,
  user: user6)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage6.png')
  file = File.open(image_path)
  garage6.photo.attach(io: file, filename: "garage6.png", content_type: "image/png")
  garage6.save!

  puts "Created #{garage6}"

garage7 = Garage.new(name:"Laure's parking",
  address: "rue de Liège 46, 1190 Forest ",
  width:189,
  length:354,
  price_per_minute:0.21,
  user: user7)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage7.png')
  file = File.open(image_path)
  garage7.photo.attach(io: file, filename: "garage7.png", content_type: "image/png")
  garage7.save!

  puts "Created #{garage7}"

garage8 = Garage.new(name:"Gauthier's parking",
  address: "Rue de l'Indépendance 70, 1080 Molenbeek-Saint-Jean",
  width:205,
  length:378,
  price_per_minute:0.29,
  user: user8)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage8.png')
  file = File.open(image_path)
  garage8.photo.attach(io: file, filename: "garage8.png", content_type: "image/png")
  garage8.save!

  puts "Created #{garage8}"

garage9 = Garage.new(name:"Tatiana's parking",
  address: "Rue Juliette Wytsman 89, 1050 Ixelles",
  width:200,
  length:350,
  price_per_minute:0.32,
  user: user9)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage9.png')
  file = File.open(image_path)
  garage9.photo.attach(io: file, filename: "garage9.png", content_type: "image/png")
  garage9.save!

  puts "Created #{garage9}"

garage10 = Garage.new(name:"Hélène's parking",
  address: "Avenue des Sept Bonniers, 1190 Forest",
  width:220,
  length:370,
  price_per_minute:0.36,
  user: user10)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage10.png')
  file = File.open(image_path)
  garage10.photo.attach(io: file, filename: "garage10.png", content_type: "image/png")
  garage10.save!

  puts "Created #{garage10}"

garage11 = Garage.new(name:"Sofia's parking",
  address: "Rue du Noyer 236, 1030 Schaerbeek",
  width:190,
  length:330,
  price_per_minute:0.24,
  user: user11)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage11.png')
  file = File.open(image_path)
  garage11.photo.attach(io: file, filename: "garage11.png", content_type: "image/png")
  garage11.save!

  puts "Created #{garage11}"

garage12 = Garage.new(name:"Diane's parking",
  address: "rue du Noyer 86, 1030 Schaerbeek",
  width:170,
  length:360,
  price_per_minute:0.31,
  user: user12)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage12.png')
  file = File.open(image_path)
  garage12.photo.attach(io: file, filename: "garage12.png", content_type: "image/png")
  garage12.save!

  puts "Created #{garage12}"

garage13 = Garage.new(name:"Juan's parking",
  address: "Avenue Wolvendael 4, 1180 Uccle",
  width:190,
  length:330,
  price_per_minute:0.30,
  user: user13)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage13.png')
  file = File.open(image_path)
  garage13.photo.attach(io: file, filename: "garage13.png", content_type: "image/png")
  garage13.save!

  puts "Created #{garage13}"

garage14 = Garage.new(name:"Harold's parking",
  address: "Chaussée de Waterloo 374, 1060 Saint-Gilles",
  width:230,
  length:430,
  price_per_minute:0.21,
  user: user14)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage14.png')
  file = File.open(image_path)
  garage14.photo.attach(io: file, filename: "garage14.png", content_type: "image/png")
  garage14.save!

  puts "Created #{garage14}"

garage15 = Garage.new(name:"Maryline's parking",
  address: "Rue des Cèdres 2, 1170 Watermael-Boitsfort",
  width:250,
  length:400,
  price_per_minute:0.29,
  user: user15)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage15.png')
  file = File.open(image_path)
  garage15.photo.attach(io: file, filename: "garage15.png", content_type: "image/png")
  garage15.save!

  puts "Created #{garage15}"

garage16 = Garage.new(name:"Damien's parking",
  address: "Rue des Cèdres 2, 1170 Watermael-Boitsfort",
  width:225,
  length:489,
  price_per_minute:0.32,
  user: user16)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage16.png')
  file = File.open(image_path)
  garage16.photo.attach(io: file, filename: "garage16.png", content_type: "image/png")
  garage16.save!

  puts "Created #{garage16}"

garage17 = Garage.new(name:"Tom's parking",
  address: "Rue Vandenhoven 3, 1200 Woluwe-Saint-Lambert",
  width:212,
  length:432,
  price_per_minute:0.22,
  user: user17)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage17.png')
  file = File.open(image_path)
  garage17.photo.attach(io: file, filename: "garage17.png", content_type: "image/png")
  garage17.save!

  puts "Created #{garage17}"

garage18 = Garage.new(name:"Louis's parking",
  address: "Avenue Victor 74, 1040 Etterbeek",
  width:182,
  length:352,
  price_per_minute:0.26,
  user: user18)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage18.png')
  file = File.open(image_path)
  garage18.photo.attach(io: file, filename: "garage18.png", content_type: "image/png")
  garage18.save!

  puts "Created #{garage18}"

garage19 = Garage.new(name:"Gaston's parking",
  address: "Rue Général Leman 17, 1040 Etterbeek",
  width:198,
  length:342,
  price_per_minute:0.16,
  user: user19)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage19.png')
  file = File.open(image_path)
  garage19.photo.attach(io: file, filename: "garage19.png", content_type: "image/png")
  garage19.save!

  puts "Created #{garage19}"

garage20 = Garage.new(name:"Lorenz's parking",
  address: "rue des Aduatiques 7, 1040 Etterbeek",
  width:200,
  length:355,
  price_per_minute:0.26,
  user: user20)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage20.png')
  file = File.open(image_path)
  garage20.photo.attach(io: file, filename: "garage20.png", content_type: "image/png")
  garage20.save!

  puts "Created #{garage20}"

# Bookings from users
Reservation.create!(from: DateTime.new(2024, 4, 10, 8, 0), until: DateTime.new(2024, 4, 10, 10, 0), garage: garage1, user: user1)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 4, 11, 9, 0), until: DateTime.new(2024, 4, 11, 13, 0), garage: garage2, user: user2)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 4, 12, 11, 0), until: DateTime.new(2024, 4, 12, 13, 0), garage: garage2, user: user2)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 5, 4, 17, 0), until: DateTime.new(2024, 5, 4, 18, 0), garage: garage12, user: user12)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 5, 7, 14, 0), until: DateTime.new(2024, 5, 7, 18, 0), garage: garage9, user: user9)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 5, 8, 11, 0), until: DateTime.new(2024, 5, 8, 18, 0), garage: garage9, user: user9)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage10, user: user10)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage9, user: user9)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage8, user: user8)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage7, user: user7)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage6, user: user6)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage5, user: user5)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage4, user: user4)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage3, user: user3)
puts "reservation created"
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage2, user: user2)
puts "reservation created"
puts "Seed done!"
