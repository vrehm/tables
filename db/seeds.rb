# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

32.times do
  name = Faker::Name.unique.name
  User.create!(
    username: Faker::Internet.unique.username(6..18),
    name: name,
    email: Faker::Internet.email(name),
    password: Faker::Internet.password
  )
end
