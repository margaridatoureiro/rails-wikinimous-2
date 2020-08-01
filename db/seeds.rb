# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'

puts 'Creating 10 new juicy articles for all knowledge seekers'

Article.destroy_all

10.times do
  Article.create(title: Faker::Books::CultureSeries.book, content: Faker::TvShows::GameOfThrones.quote)
end

puts 'All set! We are now ready to blow some book-worms-slash-wise-men minds'
