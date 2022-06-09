# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# installer gem dans le file
#bundle install
#doc de la gem

Rent.destroy_all
Boat.destroy_all
puts "creation des seeds"
boat_name = ["le phocea", "eclipse", "calypso", "titanic" ]

Boat.create(boat_model: "le martinique", description: "un super voilier", picture: "voilier.jpg", licence: "permis haute mer", person_number: 4, price: 5000, localisation: "nice" )


  Boat.create(boat_model: "le phocea", description: "un super voilier", picture: "voilier.jpg", licence: "permis haute mer", person_number: 4, price: 5000, localisation: "antibes" )
  Boat.create(boat_model: "eclipse", description: "un super voilier", picture: "motor_boat.jpg", licence: "permis haute mer", person_number: 4, price: 5000, localisation: "antibes" )
  Boat.create(boat_model: "calypso", description: "un super voilier", picture: "boat.jpg", licence: "permis haute mer", person_number: 4, price: 5000, localisation: "antibes" )
  Boat.create(boat_model: "titanic", description: "un super voilier", picture: "boat2.jpg", licence: "permis haute mer", person_number: 4, price: 5000, localisation: "antibes" )




puts "fin de creation des seeds"
