# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Post.destroy_all
Like.destroy_all


User.create(name: 'Bob', email: 'bob@example.com', avatar: "https://i.insider.com/5de54e6f79d7571aaa0155a2?width=1136&format=jpeg")

10.times do
    Post.create(title: Faker::Movies::StarWars.planet, content: Faker::Movies::StarWars.quote, date: Faker::Date.in_date_period, user_id: User.all.sample.id, img_url: Faker::Fillmurray.image)
end

Like.create(user_id: User.all.sample.id, post_id: Post.all.sample.id)

10.times do 
    Comment.create(user_id: User.all.sample.id, post_id: Post.all.sample.id, content: Faker::Movies::StarWars.quote, name: User.all.sample.name)
end
