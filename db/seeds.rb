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

5.times do
User.create(username: Faker::Name.name, password: "password", password_confirmation: "password", email: Faker::Internet.email)
end

6.times do
Product.create(name: Faker::Name.first_name, description: Faker::Company.buzzword, price: rand(1..50), stock: rand(1..10) )
end

3.times do
Category.create(name: Faker::Lorem.word)
end

CategoriesProduct.create(category_id: (1), product_id: (1))
CategoriesProduct.create(category_id: (2), product_id: (1))
CategoriesProduct.create(category_id: (3), product_id: (1))

CategoriesProduct.create(category_id: (1), product_id: (2))
CategoriesProduct.create(category_id: (2), product_id: (2))
CategoriesProduct.create(category_id: (3), product_id: (2))

CategoriesProduct.create(category_id: (1), product_id: (3))
CategoriesProduct.create(category_id: (2), product_id: (3))

CategoriesProduct.create(category_id: (1), product_id: (4))
CategoriesProduct.create(category_id: (3), product_id: (4))

CategoriesProduct.create(category_id: (1), product_id: (5))
CategoriesProduct.create(category_id: (2), product_id: (5))

CategoriesProduct.create(category_id: (2), product_id: (6))
CategoriesProduct.create(category_id: (3), product_id: (6))
