# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
puts "cleaning the databse"

User.create!(
  firstname: 'James',
  lastname: 'Wordie',
  username: 'jameswordie',
  email: "james.wordie@insta.com",
  post: 45,
  follower: 113,
  following: 250,
  bio: 'Junior Web Developer and Designer, Le Wagon Graduate #523, Private Chef, Family Farm'
  )
puts "seeded my user"

100.times do
  User.create!(
    firstname: 'James',
    lastname: 'Wordie',
    username: 'jameswordie',
    email: "james.wordie@insta.com",
    post: 45,
    follower: 113,
    following: 250,
    bio: 'Junior Web Developer and Designer, Le Wagon Graduate #523, Private Chef, Family Farm'
    )
end
