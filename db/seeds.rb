# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

movies = {
  'The Batman': 'themoviedb.org/t/p/w220_and_h330_face/mo7teil1qH0SxgLijnqeYP1Eb4w.jpg',
  'Vértigo': 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cOWPC7Sg9xoDM5i3uzs4iQtSPUj.jpg',
  'Jurassic World: Dominion': 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vyTTjx1aHU9SOcEyF4kdcufjKqx.jpg',
  'Top Gun: Maverick': 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/AlWpEpQq0RgZIXVHAHZtFhEvRgd.jpg',
  'Minions: El origen de Gru': 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zBk0guZ6NI2aHclb4sbrQdrrnOC.jpg'
}

movies.each do |key, value|
  movie = Movie.create(
    title: key,
    overview: Faker::Movie.quote,
    poster_url: value,
    rating: rand(8.0..10.0).floor(1)
  )
  movie.save!
end
