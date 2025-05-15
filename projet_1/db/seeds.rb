require "bundler"
Bundler.require

require "faker"

genres = ["action", "horreur", "comédie", "drame"]

100.times do
  Movie.create(
    name: Faker::Movie.title,
    year: rand(1900..2020),
    genre: genres.sample,
    synopsis: Faker::Lorem.sentence(word_count: 10),
    director: Faker::Name.name,
    mycine_rating: rand(0.0..5.0).round(1),
    my_rating: nil,
    already_seen: false
  )
end
