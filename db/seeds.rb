# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD

puts "limpiando base de datos"
User.destroy_all if Rails.env.development?

User.create(email:"carolina@gmail.com", password: "Carolina123", password_confirmation: "Carolina123")
User.create(email:"paola@gmail.com", password: "Paola123", password_confirmation: "Paola123")
User.create(email:"daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")
=======
puts "limpiando base de datos"
User.destroy_all if Rails.env.development?

User.create(email:  "carolina@gmail.com", password: "Carolina123", password_confirmation: "Carolina123")
User.create(email:  "paola@gmail.com", password: "Paola123", password_confirmation: "Paola123")
User.create(email:  "daniel@gmail.com", password: "Daniel123", password_confirmation: "Daniel123")
>>>>>>> 8b8f37784aa9f715e96d9b3af9fdc9f8f4159838
