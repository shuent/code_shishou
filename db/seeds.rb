# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email:'sample1@samplee.com', password:'password')
user2 = User.create!(email:'sample2@samplee.com', password:'password')
user3 = User.create!(email:'sample3@samplee.com', password:'password')

p1 = Project.new(title:'sample title', body: 'sample body body ..................................')
p2 = Project.new(title:'sample　2 title', body: 'sample 2 body body ..................................')
p1.owner = user1
p2.owner = user2

p1.save!
p2.save!

Chat.create!(user: user1, project: p1, body:'sample comment 1')
Chat.create!(user: user2, project: p1, body:'sample comment 2')
Chat.create!(user: user3, project: p1, body:'sample comment 3')
