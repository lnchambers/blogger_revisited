# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_count = 1
second_count = 1
third_count = 1

User.create!(username: Faker::Pokemon.name, email: "admin@admin.com", password: "password")

100.times do
  puts "Seeding User #{first_count}"
  first_count += 1
  User.create!(username: Faker::Pokemon.name, email: Faker::Internet.email, password: Faker::Company.bs)
end

1000.times do
  puts "Seeding Post #{second_count}"
  second_count += 1
  Post.create!(title: Faker::Company.bs, body: Faker::TheFreshPrinceOfBelAir.quote, user: User.all.sample)
end

5000.times do
  puts "Seeding Comment #{third_count}"
  third_count += 1
  Comment.create!(title: Faker::SiliconValley.motto, body: Faker::SiliconValley.quote, user: User.all.sample, post: Post.all.sample)
end
