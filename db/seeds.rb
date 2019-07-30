# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Horoscope.destroy_all
User.destroy_all
#Horoscope creation
Horoscope.create(name: "Aries" )
Horoscope.create(name: "Taurus" )
Horoscope.create(name: "Gemini" )
Horoscope.create(name: "Cancer")
Horoscope.create(name: "Leo")
Horoscope.create(name: "Virgo")
Horoscope.create(name: "Libra")
Horoscope.create(name: "Scorpio")
Horoscope.create(name: "Sagittarius")
Horoscope.create(name: "Capricorn")
Horoscope.create(name: "Aquarius")
Horoscope.create(name: "Pisces")


#user data
User.create(first_name: "Rashad", last_name: "Walcott", age: 30, email: "rashad@flatiron.com", user_name: "rahshad", horoscope_id: 1)
User.create(first_name: "Aliciea", last_name: "Suechin", age: 30, email: "aliciea@flatiron.com", user_name: "aliciea", horoscope_id: 2)
User.create(first_name: "Amrit", last_name: "Singh", age: 30, email: "amrit@flatiron.com", user_name: "amrit", horoscope_id: 3)
