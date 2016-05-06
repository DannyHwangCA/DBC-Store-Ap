require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "tom", password: "tomtom", password_confirmation: "tomtom", email: "tom@tom.com")
User.create(username: "tim", password: "timtim", password_confirmation: "timtim", email: "tim@tim.com", admin: true)

10.times do
User.create(username: Faker::Name.name, password: "password", password_confirmation: "password", email: Faker::Internet.email)
end

25.times do
Product.create(name: Faker::Company.name, description: Faker::Company.buzzword, price: rand(1..50), stock: rand(1..10) )
end

3.times do
Category.create(name: Faker::Lorem.word)
end

100.times do
CategoriesProduct.create(category_id: rand(1..3), product_id: rand(1..25))
end

