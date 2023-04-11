# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do
   
    Myst.create(
        game: Faker::Games::Myst.game,
        creature: Faker::Games::Myst.creature,
        age: Faker::Games::Myst.age,
        character: Faker::Games::Myst.character,
        quote: Faker::Games::Myst.quote
    )
    
end
