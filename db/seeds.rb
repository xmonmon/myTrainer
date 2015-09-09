# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name: 'Monika', last_name: 'Chumber', username: "xmonmon", email: 'mon@test.com', password: 'test', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg', city_id: "1")
User.create(first_name: 'Test', last_name: 'Test', username: "test", email: 'test@test.com', password: 'test', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg', city_id: "2")

Trainer.create(first_name: 'Tom', last_name: 'Test', username: "tomt", email: "tom@test.com", password: "test", avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg', city_id: "1")
Trainer.create(first_name: 'Demo', last_name: 'Test', username: "demot", email: "demo@test.com", password: "test", avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg', city_id: "2")

Review.create(username: "xmonmon", title: "bye", body: "hi", user_id: "1")
Review.create(username: "cameronj", title: "hi", body: "bye", user_id: "2")
Review.create(username: "adamb", title: "bye", body: "hi", user_id: "1")
Review.create(username: "briannav", title: "hi", body: "bye", user_id: "2")
Review.create(username: "alip", title: "bye", body: "hi", user_id: "1")
Review.create(username: "xmonmon", title: "hi", body: "bye", user_id: "2")
Review.create(username: "cameronj", title: "bye", body: "hi", user_id: "1")
Review.create(username: "adamb", title: "hi", body: "bye", user_id: "2")
Review.create(username: "briannav", title: "bye", body: "hi", user_id: "1")
Review.create(username: "alip", title: "hi", body: "bye", user_id: "2")

City.create(name: "San Francisco", zip_code: "94101")
City.create(name: "Newark", zip_code: "94560")
City.create(name: "Fremont", zip_code: "94536")
City.create(name: "Union City", zip_code: "94587")
City.create(name: "Mountain View", zip_code: "94041")
City.create(name: "Hayward", zip_code: "94540")
City.create(name: "Sunnyvale", zip_code: "94085")
City.create(name: "Oakland", zip_code: "94601")
