# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
puts 'destroying all users...'

user1 = User.create!(email: 'default1@default.com', password: '123456', first_name: 'Thibaut', last_name: 'Roland')
user2 = User.create!(email: 'default2@default.com', password: '123456', first_name: 'Thomas', last_name: 'Roland')

subscription_1a = Subscription.create!(price: 15, frequency: 'monthly', name: 'netflix', starting_date: Date.parse('2017-05-28'), user: user1)
subscription_1b = Subscription.create!(price: 80, frequency: 'monthly', name: 'TGV max', starting_date: Date.parse('2019-10-12'), user: user1)

subscription_2a = Subscription.create!(price: 7, frequency: 'weekly', name: 'CNN', starting_date: Date.parse('2020-11-13'), user: user2)
subscription_2b = Subscription.create!(price: 300, frequency: 'yearly', name: 'Air France', starting_date: Date.parse('2021-03-07'), user: user2)

puts "Users and subscriptions seeded!"
