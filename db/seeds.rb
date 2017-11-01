# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'Jose Hidalgo',
                    password_confirmation: 'topsecret',
                    password: 'topsecret',
                    admin: false,
                    email: 'jhidalgo1@uc.cl')

story1 = Story.create(title: 'Red Route',user_id: user1.id);
