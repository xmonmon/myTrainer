# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name: 'Monika', last_name: 'Chumber', username: "xmonmon", email: 'mon@test.com', password: 'test', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')