require "open-uri"
Reservation.destroy_all
Garage.destroy_all
User.destroy_all

# Create users
user1 = User.create!(email: "pedro@mail.com", password: "123456")
user2 = User.create!(email: "pauline@mail.com", password: "123456")
user3 = User.create!(email: "john@mail.com", password: "123456")
user4 = User.create!(email: "caro@mail.com", password: "123456")
user5 = User.create!(email: "nicolas@mail.com", password: "123456")
user6 = User.create!(email: "benjamin@mail.com", password: "123456")
user7 = User.create!(email: "yassir@mail.com", password: "123456")
user8 = User.create!(email: "gauthier@mail.com", password: "123456")
user9 = User.create!(email: "laure@mail.com", password: "123456")
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

# Adding new garage
garage1 = Garage.new(name:"Pauline's parking",
  address: "rue Saint-Bernard 94, 1060 Saint-Gilles",
  width:250,
  length:450,
  price_per_minute: 0.39,
  user: user1)
  garage1.save!

garage2 = Garage.new(name: "Jonathan's parking",
  address: "Vogelzang 158, 1160 Oudergem",
  width:230,
  length:400,
  price_per_minute:0.20,
  user: user2)
  garage2.save!

garage3 = Garage.new(name:"Pedro's parking",
  address: "Léopold Wienerlaan 6, 1170 Watermaal-Bosvoorde",
  width:250,
  length:400,
  price_per_minute:0.18,
  user: user3)
  garage3.save!

garage4 = Garage.new(name:"Caro's parking",
  address: "Av. de Tervueren 137, 1150 Woluwe-Saint-Pierre",
  width:200,
  length:390,
  price_per_minute:0.25,
  user: user4)
  garage4.save!

garage5 = Garage.new(name:"Nicolas's parking",
  address: "Rue Leekaerts 29, 1140 Evere",
  width:205,
  length:385,
  price_per_minute:0.25,
  user: user5)
  garage5.save!

garage6 = Garage.new(name:"Benjamin's parking",
  address: "Rue du Page 65, 1050 Ixelles",
  width:195,
  length:387,
  price_per_minute:0.28,
  user: user6)
  garage6.save!

garage7 = Garage.new(name:"Laure's parking",
  address: "Brusselsesteenweg 14, 1070 Anderlecht",
  width:189,
  length:354,
  price_per_minute:0.21,
  user: user7)
  garage7.save!

garage8 = Garage.new(name:"Gauthier's parking",
  address: "Rue de Ribaucourt 6, 1080 Molenbeek-Saint-Jean",
  width:205,
  length:378,
  price_per_minute:0.29,
  user: user8)
  garage8.save!

garage9 = Garage.new(name:"Laure's parking",
  address: "Rue Eugène Cattoir 5, 1050 Ixelles",
  width:200,
  length:350,
  price_per_minute:0.32,
  user: user9)
  garage9.save!

garage10 = Garage.new(name:"Hélène's parking",
  address: "Av. Brugmann 519, 1180 Uccle",
  width:220,
  length:370,
  price_per_minute:0.36,
  user: user10)
  garage10.save!

garage11 = Garage.new(name:"Sofia's parking",
  address: "Rue du Noyer 236, 1030 Schaerbeek",
  width:190,
  length:330,
  price_per_minute:0.24,
  user: user11)
  garage11.save!

garage12 = Garage.new(name:"Diane's parking",
  address: "Cantersteen 10, 1000 Bruxelles",
  width:170,
  length:360,
  price_per_minute:0.31,
  user: user12)
  garage12.save!

garage13 = Garage.new(name:"Juan's parking",
  address: "Avenue Wolvendael 4, 1180 Uccle",
  width:190,
  length:330,
  price_per_minute:0.30,
  user: user13)
  garage13.save!

garage14 = Garage.new(name:"Harold's parking",
  address: "Chaussée de Waterloo 203, 1060 Saint-Gilles",
  width:230,
  length:430,
  price_per_minute:0.21,
  user: user14)
  garage14.save!

garage15 = Garage.new(name:"Maryline's parking",
  address: "Rue des Cèdres 2, 1170 Watermael-Boitsfort",
  width:250,
  length:400,
  price_per_minute:0.29,
  user: user15)
  garage15.save!

garage16 = Garage.new(name:"Damien's parking",
  address: "Rue des Cèdres 2, 1170 Watermael-Boitsfort",
  width:225,
  length:489,
  price_per_minute:0.32,
  user: user16)
  garage16.save!

garage17 = Garage.new(name:"Tom's parking",
  address: "Rue Voot 30, 1200 Woluwe-Saint-Lambert",
  width:212,
  length:432,
  price_per_minute:0.22,
  user: user17)
  garage17.save!

garage18 = Garage.new(name:"Louis's parking",
  address: "Avenue des Casernes 21, 1040 Etterbeek",
  width:182,
  length:352,
  price_per_minute:0.26,
  user: user18)
  garage18.save!

garage19 = Garage.new(name:"Gaston's parking",
  address: "Rue Général Leman 36, 1040 Etterbeek",
  width:198,
  length:342,
  price_per_minute:0.16,
  user: user19)
  garage19.save!

garage20 = Garage.new(name:"Lorenz's parking",
  address: "Avenue de Tervueren 59, 1040 Etterbeek",
  width:200,
  length:355,
  price_per_minute:0.26,
  user: user20)
  garage20.save!

# Bookings from users
Reservation.create!(from: DateTime.new(2024, 4, 10, 8, 0), until: DateTime.new(2024, 4, 10, 10, 0), garage: garage1, user: user1)
Reservation.create!(from: DateTime.new(2024, 4, 11, 9, 0), until: DateTime.new(2024, 4, 11, 13, 0), garage: garage2, user: user2)
Reservation.create!(from: DateTime.new(2024, 4, 12, 11, 0), until: DateTime.new(2024, 4, 12, 13, 0), garage: garage2, user: user2)
Reservation.create!(from: DateTime.new(2024, 5, 4, 17, 0), until: DateTime.new(2024, 5, 4, 18, 0), garage: garage12, user: user12)
Reservation.create!(from: DateTime.new(2024, 5, 7, 14, 0), until: DateTime.new(2024, 5, 7, 18, 0), garage: garage9, user: user9)
Reservation.create!(from: DateTime.new(2024, 5, 8, 11, 0), until: DateTime.new(2024, 5, 8, 18, 0), garage: garage9, user: user9)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage10, user: user10)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage9, user: user9)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage8, user: user8)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage7, user: user7)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage6, user: user6)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage5, user: user5)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage4, user: user4)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage3, user: user3)
Reservation.create!(from: DateTime.new(2024, 3, 15, 11, 0), until: DateTime.new(2024, 4, 15, 18, 0), garage: garage2, user: user2)


  puts "Seed done!"
