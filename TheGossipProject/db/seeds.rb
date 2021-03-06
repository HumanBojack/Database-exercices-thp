# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do 
# 	first_name = Faker::Name.first_name
# 	User.create(first_name: first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::SouthPark.quote, email: Faker::Internet.free_email(name: first_name), age: rand(18..99))
# end
# 10.times do 
# 	City.create(name: Faker::Address.unique.city, zip_code: rand(10000..99999))
# end
# 10.times do |i|
# 	User.find(i + 1).update(city: City.find(rand(1..10)))
# end
# 20.times do
# 	Gossip.create(title: Faker::TvShows::MichaelScott.quote , content: Faker::Movies::Lebowski.quote , user: User.find(rand(User.first.id..User.last.id)))
# end
# 10.times do
# 	Tag.create(title: Faker::Book.genre)
# end
# Gossip.count.times do |i|
# 	rand(1..3).times do |k|
# 		GivenTag.create(gossip:Gossip.find(i+1), tag: Tag.find(rand(1..10)))
# 	end
# end

#Create a message that gets send to two receivers
sender = User.find(1)
receiver1 = User.find(2)
receiver2 = User.find(3)
pm = PrivateMessage.create(user: sender, content:"Hey guys !")
Receiver.create(user: receiver1, private_message: pm)
Receiver.create(user: receiver2, private_message: pm)