require "open-uri"
Reservation.destroy_all
Garage.destroy_all
User.destroy_all

user1 = User.create!(email: "pedro@mail.com", password: "123456")
user2 = User.create!(email: "pauline@mail.com", password: "123456")
user3 = User.create!(email: "john@mail.com", password: "123456")

garage = Garage.new(name:"Pauline's parking",
  address: "rue Saint-Bernard 94, 1060 Saint-Gilles",
  width:250,
  length:450,
  price_per_minute: 0.39,
  user: user1)
  garage.save!

garage = Garage.new(name: "Jonathan's parking",
  address: "avenue de chant d'Oiseau 158, 1160 Auderghem",
  width:230,
  length:400,
  price_per_minute:0.20,
  user: user2)
  garage.save!

garage = Garage.new(name:"Pedro's parking",
  address: "Av. Léopold Wiener 6, 1170 Watermael-Boisfort",
  width:250,
  length:400,
  price_per_minute:0.18,
  user: user3)
  garage.save!

  puts "Seed done!"
