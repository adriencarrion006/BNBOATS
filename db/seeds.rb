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
puts "creation des seeds"
boat_name = ["le phocea", "eclipse", "calypso", "titanic" ]
boat_name.each do |boat|
  Boat.create(boat_model: boat, description: "un super voilier", picture: "my picture", licence: "permis haute mer", person_number: 4, price: 5000, localisation: "antibes" )
end
puts "fin de creation des seeds"
