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
user21 = User.create!(email: "lili@mail.com", password: "123456")
user22 = User.create!(email: "jeanne@mail.com", password: "123456")
user23 = User.create!(email: "maxime@mail.com", password: "123456")
user24 = User.create!(email: "sarah@mail.com", password: "123456")
user25 = User.create!(email: "pascaline@mail.com", password: "123456")
user26 = User.create!(email: "martin@mail.com", password: "123456")
user27 = User.create!(email: "julia@mail.com", password: "123456")
user28 = User.create!(email: "ida@mail.com", password: "123456")

puts "Users created"

# Adding new garage
garage1 = Garage.new(name:"Pedro's parking",
  address: "chaussée d'Ixelles 134, 1050 Ixelles",
  width_in_meters:2.50,
  length_in_meters:4.50,
  price_per_minute: 0.02,
  user: user1)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage1.png')
  file = File.open(image_path)
  garage1.photo.attach(io: file, filename: "garage1.png", content_type: "image/png")
  garage1.save!

  puts "Created #{garage1}"

garage2 = Garage.new(name: "Pauline's parking",
  address: "rue de la Concorde 30, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user2)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage2.png')
  file = File.open(image_path)
  garage2.photo.attach(io: file, filename: "garage2.png", content_type: "image/png")
  garage2.save!

  puts "Created #{garage2}"


garage3 = Garage.new(name:"Jonathan's parking",
  address: "Rue Keyenveld 85, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user3)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage3.png')
  file = File.open(image_path)
  garage3.photo.attach(io: file, filename: "garage3.png", content_type: "image/png")
  garage3.save!

  puts "Created #{garage3}"

garage4 = Garage.new(name:"Caro's parking",
  address: "rue Anoul 30, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user4)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage4.png')
  file = File.open(image_path)
  garage4.photo.attach(io: file, filename: "garage4.png", content_type: "image/png")
  garage4.save!

  puts "Created #{garage4}"

garage5 = Garage.new(name:"Nicolas's parking",
  address: "Rue Kyenveld 25, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user5)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage5.png')
  file = File.open(image_path)
  garage5.photo.attach(io: file, filename: "garage5.png", content_type: "image/png")
  garage5.save!

  puts "Created #{garage5}"

garage6 = Garage.new(name:"Benjamin's parking",
  address: "Rue du Berger 15, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user6)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage6.png')
  file = File.open(image_path)
  garage6.photo.attach(io: file, filename: "garage6.png", content_type: "image/png")
  garage6.save!

  puts "Created #{garage6}"

garage7 = Garage.new(name:"Laure's parking",
  address: "Rue Souveraine 10, 1050 Ixelles ",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user7)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage7.png')
  file = File.open(image_path)
  garage7.photo.attach(io: file, filename: "garage7.png", content_type: "image/png")
  garage7.save!

  puts "Created #{garage7}"

garage8 = Garage.new(name:"Gauthier's parking",
  address: "Rue Bouré 16, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user8)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage8.png')
  file = File.open(image_path)
  garage8.photo.attach(io: file, filename: "garage8.png", content_type: "image/png")
  garage8.save!

  puts "Created #{garage8}"

garage9 = Garage.new(name:"Tatiana's parking",
  address: "Rue du Prince Albert 29, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user9)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage9.png')
  file = File.open(image_path)
  garage9.photo.attach(io: file, filename: "garage9.png", content_type: "image/png")
  garage9.save!

  puts "Created #{garage9}"

garage10 = Garage.new(name:"Hélène's parking",
  address: "Rue Keyenveld 14, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.25,
  user: user10)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage10.png')
  file = File.open(image_path)
  garage10.photo.attach(io: file, filename: "garage10.png", content_type: "image/png")
  garage10.save!

  puts "Created #{garage10}"

garage11 = Garage.new(name:"Sofia's parking",
  address: "Rue Keyenveld 58, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user11)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage11.png')
  file = File.open(image_path)
  garage11.photo.attach(io: file, filename: "garage11.png", content_type: "image/png")
  garage11.save!

  puts "Created #{garage11}"

garage12 = Garage.new(name:"Diane's parking",
  address: "rue du Président 28, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user12)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage12.png')
  file = File.open(image_path)
  garage12.photo.attach(io: file, filename: "garage12.png", content_type: "image/png")
  garage12.save!

  puts "Created #{garage12}"

garage13 = Garage.new(name:"Juan's parking",
  address: "Rue Isidore Verheyden 1, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.22,
  user: user13)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage13.png')
  file = File.open(image_path)
  garage13.photo.attach(io: file, filename: "garage13.png", content_type: "image/png")
  garage13.save!

  puts "Created #{garage13}"

garage14 = Garage.new(name:"Harold's parking",
  address: "Rue Saint-Boniface 15, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user14)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage14.png')
  file = File.open(image_path)
  garage14.photo.attach(io: file, filename: "garage14.png", content_type: "image/png")
  garage14.save!

  puts "Created #{garage14}"

garage15 = Garage.new(name:"Maryline's parking",
  address: "Chaussée d'Ixelles 67, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user15)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage15.png')
  file = File.open(image_path)
  garage15.photo.attach(io: file, filename: "garage15.png", content_type: "image/png")
  garage15.save!

  puts "Created #{garage15}"

garage16 = Garage.new(name:"Damien's parking",
  address: "Rue Longue Vie 31, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user16)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage16.png')
  file = File.open(image_path)
  garage16.photo.attach(io: file, filename: "garage16.png", content_type: "image/png")
  garage16.save!

  puts "Created #{garage16}"

garage17 = Garage.new(name:"Tom's parking",
  address: "Chaussée d'Ixelles 116, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user17)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage17.png')
  file = File.open(image_path)
  garage17.photo.attach(io: file, filename: "garage17.png", content_type: "image/png")
  garage17.save!

  puts "Created #{garage17}"

garage18 = Garage.new(name:"Louis's parking",
  address: "rue Prince Royal 41, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user18)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage18.png')
  file = File.open(image_path)
  garage18.photo.attach(io: file, filename: "garage18.png", content_type: "image/png")
  garage18.save!

  puts "Created #{garage18}"

garage19 = Garage.new(name:"Gaston's parking",
  address: "Rue de Stassart 90, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:4.50,
  price_per_minute:0.02,
  user: user19)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage19.png')
  file = File.open(image_path)
  garage19.photo.attach(io: file, filename: "garage19.png", content_type: "image/png")
  garage19.save!

  puts "Created #{garage19}"

garage20 = Garage.new(name:"Lorenz's parking",
  address: "Rue de l'Arbre Bénit 15, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user20)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage20.png')
  file = File.open(image_path)
  garage20.photo.attach(io: file, filename: "garage20.png", content_type: "image/png")
  garage20.save!

  puts "Created #{garage20}"

garage21 = Garage.new(name:"Lili's parking",
  address: "Rue de Stassart 59, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user21)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage21.png')
  file = File.open(image_path)
  garage21.photo.attach(io: file, filename: "garage21.png", content_type: "image/png")
  garage21.save!

  puts "Created #{garage21}"

garage22 = Garage.new(name:"Jeanne's parking",
  address: "Rue des Drapiers 13, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user22)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage22.png')
  file = File.open(image_path)
  garage22.photo.attach(io: file, filename: "garage22.png", content_type: "image/png")
  garage22.save!

  puts "Created #{garage22}"

garage23 = Garage.new(name:"Maxime's parking",
  address: "Rue de la Tulipe 31, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user23)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage23.png')
  file = File.open(image_path)
  garage23.photo.attach(io: file, filename: "garage23.png", content_type: "image/png")
  garage23.save!

  puts "Created #{garage23}"

garage24 = Garage.new(name:"Sarah's parking",
  address: "Rue Longue Vie 11, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user24)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage24.png')
  file = File.open(image_path)
  garage24.photo.attach(io: file, filename: "garage24.png", content_type: "image/png")
  garage24.save!

  puts "Created #{garage24}"

garage25 = Garage.new(name:"Pascaline's parking",
  address: "Rue Capitaine Crespel 54, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user25)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage25.png')
  file = File.open(image_path)
  garage25.photo.attach(io: file, filename: "garage25.png", content_type: "image/png")
  garage25.save!

  puts "Created #{garage25}"

garage26 = Garage.new(name:"Martin's parking",
  address: "Rue Souveraine 27, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user26)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage26.png')
  file = File.open(image_path)
  garage26.photo.attach(io: file, filename: "garage26.png", content_type: "image/png")
  garage26.save!

  puts "Created #{garage26}"

garage27 = Garage.new(name:"Julia's parking",
  address: "Rue des Drapiers 50, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user27)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage27.png')
  file = File.open(image_path)
  garage27.photo.attach(io: file, filename: "garage27.png", content_type: "image/png")
  garage27.save!

  puts "Created #{garage27}"

garage28 = Garage.new(name:"Ida's parking",
  address: "Rue de Stassart 104, 1050 Ixelles",
  width_in_meters:2.00,
  length_in_meters:3.55,
  price_per_minute:0.02,
  user: user28)
  image_path = Rails.root.join('app', 'assets', 'images', 'garage28.png')
  file = File.open(image_path)
  garage28.photo.attach(io: file, filename: "garage28.png", content_type: "image/png")
  garage28.save!

  puts "Created #{garage28}"


# USER 3 - My bookings
res1 = Reservation.new(from: DateTime.new(2024, 4, 2, 10, 0), until: DateTime.new(2024, 4, 2, 12, 0), garage: garage16, user: user3)
res1.price_cents = res1.calc_total_price
res1.save

res2 = Reservation.new(from: DateTime.new(2024, 3, 17, 11, 0), until: DateTime.new(2024, 3, 17, 15, 0), garage: garage15, user: user3)
res2.price_cents = res2.calc_total_price
res2.save

res3 = Reservation.new(from: DateTime.new(2024, 3, 20, 11, 0), until: DateTime.new(2024, 3, 20, 18, 0), garage: garage10, user: user3)
res3.price_cents = res3.calc_total_price
res3.save

# USER 3 - My Garage
res4 = Reservation.new(from: DateTime.new(2024, 3, 19, 10, 0), until: DateTime.new(2024, 3, 19, 18, 0), garage: garage3, user: user7)
res4.price_cents = res4.calc_total_price
res4.save

res5 = Reservation.new(from: DateTime.new(2024, 3, 22, 11, 0), until: DateTime.new(2024, 3, 22, 15, 0), garage: garage3, user: user10)
res5.price_cents = res5.calc_total_price
res5.save

res6 = Reservation.new(from: DateTime.new(2024, 3, 29, 15, 0), until: DateTime.new(2024, 3, 29, 18, 0), garage: garage3, user: user8)
res6.price_cents = res6.calc_total_price
res6.save

# BOOKING ON THE 16.03
res7 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage3, user: user5)
res7.price_cents = res7.calc_total_price
res7.save
puts "reservation created"

res8 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage4, user: user6)
res8.price_cents = res8.calc_total_price
res8.save
puts "reservation created"

res9 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage5, user: user7)
res9.price_cents = res9.calc_total_price
res9.save
puts "reservation created"

res10 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage6, user: user8)
res10.price_cents = res10.calc_total_price
res10.save
puts "reservation created"

res11 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage7, user: user9)
res11.price_cents = res11.calc_total_price
res11.save
puts "reservation created"

res12 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage8, user: user10)
res12.price_cents = res12.calc_total_price
res12.save
puts "reservation created"

res13 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage9, user: user11)
res13.price_cents = res13.calc_total_price
res13.save
puts "reservation created"

res14 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage10, user: user12)
res14.price_cents = res14.calc_total_price
res14.save
puts "reservation created"

res15 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage11, user: user13)
res15.price_cents = res15.calc_total_price
res15.save
puts "reservation created"

res16 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage12, user: user14)
res16.price_cents = res16.calc_total_price
res16.save
puts "reservation created"

res17 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage13, user: user15)
res17.price_cents = res17.calc_total_price
res17.save
puts "reservation created"

res18 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage14, user: user16)
res18.price_cents = res18.calc_total_price
res18.save
puts "reservation created"

res19 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage15, user: user17)
res19.price_cents = res19.calc_total_price
res19.save
puts "reservation created"

res20 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage16, user: user18)
res20.price_cents = res20.calc_total_price
res20.save
puts "reservation created"

res21 = Reservation.new(from: DateTime.new(2024, 3, 16, 8, 0), until: DateTime.new(2024, 3, 16, 23, 0), garage: garage17, user: user20)
res21.price_cents = res21.calc_total_price
res21.save
puts "reservation created"


puts "reservation created"
puts "Seed done!"
