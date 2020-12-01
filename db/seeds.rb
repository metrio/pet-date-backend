# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Playdate.destroy_all
Pet.destroy_all

20.times do 
    Pet.create!(
        name: Faker::Creature::Dog.name, 
        temper: Faker::Creature::Dog.sound,
        age: Faker::Creature::Dog.age,
        breed: Faker::Creature::Dog.breed,
        gender: Faker::Creature::Dog.gender,
        species: Faker::Creature::Animal.name
    )
end

5.times do 
    Playdate.create!(
        pet_id: Pet.all.sample.id,
        pet2_id: Pet.all.sample.id,
        date: "12.1.20",
        location: "Prospect Park Dog Beach",
        longitude: rand(1..100),
        latitude: rand(1..100)
    )
end