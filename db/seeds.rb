# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

10.times do |movie|
  Movie.create(
    title: Faker::Movie.title,
    category: Movie::CATEGORIES.sample,
    year: Array(Movie::YEARS).sample
  )
end
