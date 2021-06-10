require 'faker'
require 'open-uri'

User.destroy_all
puts "cleaning the databse"

me = User.new(
  firstname: 'James',
  lastname: 'Wordie',
  username: 'jameswordie',
  email: "james.wordie@insta.com",
  post: 45,
  follower: 113,
  following: 250,
  bio: 'Junior Web Developer and Designer, Le Wagon Graduate #523, Private Chef, Family Farm'
  )
file = URI.open("https://kitt.lewagon.com/placeholder/users/jameswordie")
me.avatar.attach(io: file, filename: 'me.jpg', content_type: 'image/jpg')
me.save!
puts "seeded my user"

avatar_images = ["https://images.ctfassets.net/1wryd5vd9xez/4DxzhQY7WFsbtTkoYntq23/a4a04701649e92a929010a6a860b66bf/https___cdn-images-1.medium.com_max_2000_1_Y6l_FDhxOI1AhjL56dHh8g.jpeg",
"https://alzheimer.ca/sites/default/files/styles/hero/public/2020-09/National-ambassador-Jane-Kennedy.jpg?itok=etAp5n27",
"https://mk0qomafemocnned3wjh.kinstacdn.com/wp-content/uploads/2019/02/AI-thispersondoesnotexist.jpg",
"https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2014/03/8-choppy-collarbone-cut.jpg?resize=500%2C500&ssl=1",
"https://i0.wp.com/www.hadviser.com/wp-content/uploads/2019/04/24-shaggy-bob-for-square-face-BcKy3nOnaAm.jpg?resize=995%2C995&ssl=1",
"https://cdn.lifehack.org/wp-content/uploads/2014/03/shutterstock_97566446.jpg",
"https://grademiners.com/wp-content/uploads/2017/07/Descriptive-Essay-About-a-Person.jpg",
"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/7/5/enhanced/buzzfeed-prod-fastlane01/original-grid-image-13357-1467884354-3.jpg?crop=1024:1024;0,0",
"https://img.buzzfeed.com/buzzfeed-static/static/2016-07/7/5/enhanced/buzzfeed-prod-fastlane01/original-grid-image-13974-1467884399-11.jpg?crop=1024:1024;0,0",
"https://mk0qomafemocnned3wjh.kinstacdn.com/wp-content/uploads/2019/02/AI-thispersondoesnotexist.jpg"]

i = 0

10.times do
  user = User.new(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.username(specifier: 5..12),
    email: Faker::Internet.safe_email,
    post: rand(1..100),
    follower: rand(1..1000000),
    following: rand(1..1000),
    bio: Faker::Lorem.words(number: 10)
  )
  file = URI.open("#{avatar_images[i]}")
  user.avatar.attach(io: file, filename: 'person.jpg', content_type: 'image/jpg')
  i += 1
end


