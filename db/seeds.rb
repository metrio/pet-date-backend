# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Playdate.destroy_all
Pet.destroy_all


anise = Pet.create(name:"Anise", temper: "Friendly and Energetic", age: 1, breed: "Calico", gender: "Female", species: "Cat", img: "https://imgur.com/OV8LAZd.jpg")
raffy = Pet.create(name:"Raffy", temper: "Happy", age: 10, breed: "Mixed", gender: "Male", species: "Dog", img: "https://imgur.com/hpDSY37.jpg")
tiger = Pet.create(name:"Tiger Rose", temper: "Sweet, Shy, Playful", age: 3, breed: "Jindo", gender: "Female", species: "Dog", img: "https://imgur.com/6e443Fd.jpg")
frank = Pet.create(name:"Frank", temper: "Survivor", age: 4, breed: "Raccoon", gender: "Male", species: "Raccoon", img: "https://imgur.com/OibzZvc.jpg")
diamond = Pet.create(name:"Diamond", temper: "Baby That Wants Attention", age: 3, breed: "Shih Tzu", gender: "Female", species: "Dog", img: "https://imgur.com/iTKKb4Q.jpg")
duncan = Pet.create(name:"Duncan", temper: "Sweetest Shmush", age: 1, breed: "King Charles Cavalier", gender: "Male", species: "Dog", img: "https://imgur.com/J2wPNvI.jpg")
luna = Pet.create(name:"Luna", temper: "Friendly, But High Energy", age: 7, breed: "Australian Cattle Dog", gender: "Female", species: "Dog", img: "https://imgur.com/Y6KCFEn.jpg")
foxy = Pet.create(name:"Foxy Brown", temper: "Sweet", age: 9, breed: "Mix", gender: "Female", species: "Dog", img: "https://imgur.com/YB5130C.jpg")
momo = Pet.create(name:"Momo", temper: "Crazy Psycho", age: 1, breed: "Calico", gender: "Male", species: "Cat", img: "https://imgur.com/2pGpGus.jpg")



10.times do 
    Playdate.create!(
        pet_id: Pet.all.sample.id,
        pet2_id: Pet.all.sample.id,
        date: "12.1.20",
        location: "Prospect Park Dog Beach",
        longitude: rand(1..100),
        latitude: rand(1..100)
    )
end