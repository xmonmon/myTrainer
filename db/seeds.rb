# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)
User.create(first_name: "Monika", last_name: "Chumber", username: "xmonmon", email: "mon@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "1")
User.create(first_name: "Test", last_name: "Test", username: "test", email: "test@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "2")
User.create(first_name: "Cameron", last_name: "Jacoby", username: "cameronj", email: "cam@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "3")
User.create(first_name: "Adam", last_name: "Braus", username: "adamb", email: "braus@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "4")
User.create(first_name: "Brianna", last_name: "Veenstra", username: "briannav", email: "bri@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "5")

Trainer.create(first_name: "Tom", last_name: "Test", username: "tomt", city_name: "San Francisco", email: "tom@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "1")
Trainer.create(first_name: "Demo", last_name: "Test", username: "demot", city_name: "Newark", email: "demo@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "2")
Trainer.create(first_name: "Ali", last_name: "P", username: "alip", city_name: "Fremont", email: "ali@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "3")
Trainer.create(first_name: "Julfi", last_name: "Chumber", username: "julfic", city_name: "Union City", email: "julfi@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "4")
Trainer.create(first_name: "Tara", last_name: "Kaur", username: "tara", city_name: "Mountain View", email: "tara@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "5")

Review.create(username: "xmonmon", title: "this is the title", body: "this is a review", user_id: "1", trainer_id: "1")
Review.create(username: "cameronj", title: "this is the title", body: "this is a review", user_id: "2", trainer_id: "2")
Review.create(username: "adamb", title: "this is a title", body: "this is a review", user_id: "3", trainer_id: "3")
Review.create(username: "briannav", title: "this is a title", body: "this is a review", user_id: "4", trainer_id: "4")
Review.create(username: "alip", title: "this is a title", body: "this is a review", user_id: "5", trainer_id: "5")
Review.create(username: "xmonmon", title: "another one", body: "this is a review", user_id: "1", trainer_id: "1")
Review.create(username: "cameronj", title: "another one", body: "this is a review", user_id: "2", trainer_id: "2")
Review.create(username: "adamb", title: "another one", body: "this is a review", user_id: "3", trainer_id: "3")
Review.create(username: "briannav", title: "another one", body: "this is a review", user_id: "4", trainer_id: "4")
Review.create(username: "alip", title: "another one", body: "this is a review", user_id: "5", trainer_id: "5")

City.create(city_name: "San Francisco", zip_code: "94101")
City.create(city_name: "Newark", zip_code: "94560")
City.create(city_name: "Fremont", zip_code: "94536")
City.create(city_name: "Union City", zip_code: "94587")
City.create(city_name: "Mountain View", zip_code: "94041")

Comment.create(body: "this is a comment", trainer_id: "1", review_id: "1")
Comment.create(body: "this is a comment", trainer_id: "2", review_id: "2")
Comment.create(body: "this is a comment", trainer_id: "3", review_id: "3")
Comment.create(body: "this is a comment", trainer_id: "4", review_id: "4")
Comment.create(body: "this is a comment", trainer_id: "5", review_id: "5")
Comment.create(body: "another one", trainer_id: "1", review_id: "1")
Comment.create(body: "another one", trainer_id: "2", review_id: "2")
Comment.create(body: "another one", trainer_id: "3", review_id: "3")
Comment.create(body: "another one", trainer_id: "4", review_id: "4")
Comment.create(body: "another one", trainer_id: "5", review_id: "5")











