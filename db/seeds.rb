# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Album.delete_all
Song.delete_all
Band.delete_all


User.create(name: "Stephen",
            password: "abc123",
            email: "stephen@gmail.com",
            phone: "1234567")

User.create(name: "Simonne",
            password: "abc123",
            email: "simonne@gmail.com",
            phone: "1234567")

User.create(name: "Lisele",
            password: "abc123",
            email: "Lisele@gmail.com",
            phone: "1234567")
