# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
# Model.delete_all
Step.delete_all
#*********Delete seed data every reseed*************


#Users
20.times do
  User.create(username: Faker::Name.name, country: Faker::Address.country, points: rand(0..100))
end

#Models
20.times do
  Model.create(name: Faker::Science.element, category: Faker::Space.planet, difficulty: "easy",
    user_id: rand(0..20), description: Faker::FamilyGuy.quote, photo: Faker::Avatar.image)
end


#Steps
10.times do |i|
  Step.create(model_id: 1, description: Faker::DragonBall.character, photo: Faker::Avatar.image,
    step_num: i)
end

10.times do |i|
  Step.create(model_id: 2, description: Faker::DragonBall.character, photo: Faker::Avatar.image,
    step_num: i)
end

#Completed_Models
10.times do
  CompletedModel.create(model_id: rand(1..4), user_id: rand(1..4))
  # puts temp.model.name
end

#Pic_Uploads
10.times do
  # puts "sup"
  temp = PicUpload.create(completed_model_id: rand(1..4), user_id: rand(1..4), photo: Faker::Avatar.image,
    description: Faker::FamilyGuy.quote)
  # puts temp.model.name
end
