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

Trainer.create(first_name: "Tom", last_name: "Test", username: "tomt", email: "tom@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "1")
Trainer.create(first_name: "Demo", last_name: "Test", username: "demot", email: "demo@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "2")
Trainer.create(first_name: "Ali", last_name: "P", username: "alip", email: "ali@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "3")
Trainer.create(first_name: "Julfi", last_name: "Chumber", username: "julfic", email: "julfi@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "4")
Trainer.create(first_name: "Tara", last_name: "Kaur", username: "tara", email: "tara@test.com", password: "test", avatar: "http://png.clipart.me/graphics/thumbs/171/businessman-avatar-profile-picture_171438758.jpg", city_id: "5")

Review.create(username: "xmonmon", title: "hi", body: "this is a review", user_id: "1", trainer_id: "1")
Review.create(username: "cameronj", title: "hi", body: "bye", user_id: "2", trainer_id: "2")
Review.create(username: "adamb", title: "this is a title", body: "this is the body", user_id: "3", trainer_id: "3")
Review.create(username: "briannav", title: "this is a title", body: "this is the body", user_id: "4", trainer_id: "4")
Review.create(username: "alip", title: "this is a title", body: "this is the body", user_id: "5", trainer_id: "5")
Review.create(username: "xmonmon", title: "hi", body: "this is another review", user_id: "1", trainer_id: "1")
Review.create(username: "cameronj", title: "another review", body: "hello again", user_id: "2", trainer_id: "2")
Review.create(username: "adamb", title: "this is a title", body: "this is the body", user_id: "3", trainer_id: "3")
Review.create(username: "briannav", title: "this is a title", body: "this is the body", user_id: "4", trainer_id: "4")
Review.create(username: "alip", title: "this is a title", body: "this is the body", user_id: "5", trainer_id: "5")

City.create(name: "San Francisco", zip_code: "94101")
City.create(name: "Newark", zip_code: "94560")
City.create(name: "Fremont", zip_code: "94536")
City.create(name: "Union City", zip_code: "94587")
City.create(name: "Mountain View", zip_code: "94041")
