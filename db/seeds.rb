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
User.create(username: 'Tradional',country: Faker::Address.country, points: rand(0..100))
20.times do
  User.create(username: Faker::Name.name, country: Faker::Address.country, points: rand(0..100))
end

#Models
Model.create(name: 'Butterfly', category: 'Traditional', difficulty: "easy",
  user_id: 1, description: 'These instructions will walk you through how to fold a traditional origami butterfly. It’s a pretty simple design and all you need is a square sheet of paper.

Are you ready? Let’s get started.', photo: 'http://localhost:3000/images/butterfly/butterFlyModel.jpg')
Model.create(name: 'Crane', category: 'Traditional', difficulty: "easy",
  user_id: 1, description: 'The traditional paper crane is probably the most famous of all origami models. It’s designed after the Japanese red-crowned crane.
  In Japanese mythology this crane is known as the “Honourable Lord Crane” and it wings carried souls up to heaven.', photo: 'http://localhost:3000/images/crane/craneModel.jpg')
Model.create(name: 'Masu Box', category: 'Traditional', difficulty: "easy",
  user_id: 1, description: 'These instructions will show you how to make a traditional origami box also known as a masu box.

Masu boxes were originally a square wooden box used to measure portions of rice during the feudal period in Japan. Masu boxes came in all kinds of different sizes ranging from about 0.18 L all the way to as big as 18 L.',
photo: 'http://localhost:3000/images/masuBox/masuBox.jpg')

Model.create(name: 'Jumping Frog', category: 'Traditional', difficulty: "easy",
  user_id: 1, description: 'These easy to follow instructions will show you how to fold a traditional origami jumping frog. This frog can actually jump pretty far if you press down on it’s back!

When you fold this model the paper will get pretty thick near the end. Don’t worry if your folds aren’t completely perfect. The frog will still look good in the end and it’ll still jump.',
 photo: 'http://localhost:3000/images/butterfly/butterFlyModel.jpg')


20.times do
  Model.create(name: Faker::Science.element, category: Faker::Space.planet, difficulty: "easy",
    user_id: rand(2..3), description: Faker::FamilyGuy.quote, photo: Faker::Avatar.image)
end


#Steps
Step.create(model_id: 1, description: 'Start with a square sheet of paper with the white side up. Fold it in half horizontally,
   crease it well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly1.jpg',
  step_num: 1)

Step.create(model_id: 1, description: 'Fold the paper in half vertically, crease it well
   and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly2.jpg',
  step_num: 2)

Step.create(model_id: 1, description: 'Fold the top quarter of the paper along the
  dotted line to the centre line.', photo: 'http://localhost:3000/images/butterfly/butterfly3.jpg',
  step_num: 3)

Step.create(model_id: 1, description: 'Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly4.jpg',
  step_num: 4)
Step.create(model_id: 1, description: 'Fold the bottom quarter of the paper along the dotted line to the centre line.', photo: 'http://localhost:3000/images/butterfly/butterfly5.jpg',
  step_num: 5)
Step.create(model_id: 1, description: 'Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly6.jpg',
  step_num: 6)
Step.create(model_id: 1, description: 'Fold the right quarter of the paper along the dotted line to the centre line.', photo: 'http://localhost:3000/images/butterfly/butterfly7.jpg',
  step_num: 7)
Step.create(model_id: 1, description: 'Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly8.jpg',
  step_num: 8)
Step.create(model_id: 1, description: ' Fold the left quarter of the paper along the dotted line to the centre line.', photo: 'http://localhost:3000/images/butterfly/butterfly9.jpg',
  step_num: 9)
Step.create(model_id: 1, description: 'Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly10.jpg',
  step_num: 10)
Step.create(model_id: 1, description: 'Fold the paper in half diagonally. Crease it well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly11.jpg',
  step_num: 11)
Step.create(model_id: 1, description: 'Fold the paper in half diagonally the other way. Crease it well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly12.jpg',
  step_num: 12)
Step.create(model_id: 1, description: 'Turn the paper over so the coloured side is facing up.', photo: 'http://localhost:3000/images/butterfly/butterfly13.jpg',
  step_num: 13)
Step.create(model_id: 1, description: 'Fold the corner of the paper to the centre along the dotted line. Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly14.jpg',
  step_num: 14)
Step.create(model_id: 1, description: 'Fold the next corner of the paper to the centre along the dotted line. Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly15.jpg',
  step_num: 15)
Step.create(model_id: 1, description: 'Fold the next corner of the paper to the centre along the dotted line. Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly16.jpg',
  step_num: 16)
Step.create(model_id: 1, description: 'Fold the final corner of the paper to the centre along the dotted line. Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly17.jpg',
  step_num: 17)
Step.create(model_id: 1, description: 'Turn the paper over so the white side is facing up again.', photo: 'http://localhost:3000/images/butterfly/butterfly18.jpg',
  step_num: 18)
Step.create(model_id: 1, description: 'Fold the two sides of the paper towards the centre along the dotted line. You already have a crease here. Only fold
  the middle half of the paper where the dotted lines are. Don’t fold the top or bottom parts of the existing crease.', photo: 'http://localhost:3000/images/butterfly/butterfly19.jpg',
  step_num: 19)
Step.create(model_id: 1, description: 'You should have a shape that resembles what you see here. Fold both the top and bottom of the model along the dotted lines to the centre.', photo: 'http://localhost:3000/images/butterfly/butterfly20.jpg',
  step_num: 20)
Step.create(model_id: 1, description: 'This is a completed Boat Base. Fold the bottom two flaps of paper down along the dotted lines.', photo: 'http://localhost:3000/images/butterfly/butterfly21.jpg',
  step_num: 21)
Step.create(model_id: 1, description: 'Flip the model over.', photo: 'http://localhost:3000/images/butterfly/butterfly22.jpg',
  step_num: 22)
Step.create(model_id: 1, description: 'Fold the top part of the paper down along the dotted line.', photo: 'http://localhost:3000/images/butterfly/butterfly23.jpg',
  step_num: 23)
Step.create(model_id: 1, description: 'Flip the model over again.', photo: 'http://localhost:3000/images/butterfly/butterfly24.jpg',
  step_num: 24)
Step.create(model_id: 1, description: 'Fold the top flap of paper on the right along the dotted line towards the centre. The dotted line goes from the top corner to
  halfway down the diagonal line at the bottom as you can see in the diagram.', photo: 'http://localhost:3000/images/butterfly/butterfly25.jpg',
  step_num: 25)
Step.create(model_id: 1, description: 'Fold the top flap of paper on the left along the dotted line towards the centre. The dotted line goes from the top corner to
  halfway down the diagonal line at the bottom as you can see in the diagram', photo: 'http://localhost:3000/images/butterfly/butterfly26.jpg',
  step_num: 26)
Step.create(model_id: 1, description: 'Flip the model over.', photo: 'http://localhost:3000/images/butterfly/butterfly27.jpg',
  step_num: 27)
Step.create(model_id: 1, description: ' Valley Fold along the dotted line in the direction of the arrow in the diagram. Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly28.jpg',
  step_num: 28)
Step.create(model_id: 1, description: 'Valley Fold along the dotted line on the other side in the direction of the arrow in the diagram. Crease this fold well and then unfold it.', photo: 'http://localhost:3000/images/butterfly/butterfly29.jpg',
  step_num: 29)
Step.create(model_id: 1, description: 'Pinch the middle of the model along the two folds you just made and form a Mountain Fold along the vertical line in the middle. This gives the butterfly it’s final shape.', photo: 'http://localhost:3000/images/butterfly/butterfly30.jpg',
  step_num: 30)


10.times do |i|
  Step.create(model_id: 3, description: Faker::DragonBall.character, photo: Faker::Avatar.image,
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
