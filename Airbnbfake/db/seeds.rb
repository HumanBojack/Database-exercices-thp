# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# City.all.destroy_all
# Dog.all.destroy_all
# Dogsitter.all.destroy_all
# Stroll.all.destroy_all


30.times do
	City.create(city_name:Faker::Address.unique.city)
end
100.times do
	Dog.create(name: Faker::Creature::Dog.name, city: City.find(rand(City.first.id..City.last.id)))
	Dogsitter.create(name: Faker::Name.name, city: City.find(rand(City.first.id..City.last.id)))
end
50.times do 
	Stroll.create(dog: Dog.find(rand(Dog.first.id..Dog.last.id)), dogsitter: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)))
end
