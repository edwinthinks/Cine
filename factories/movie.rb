FactoryBot.define do
  factory :movie do
    name { Faker::Movie.quote }
    duration { 60 }
    synopsis { Faker::Lorem.words }
    genre { Faker::Name.name }
    trailer { Faker::Internet.url }
    image { Faker::Internet.url }
    big_image { Faker::Internet.url }
  end
end
