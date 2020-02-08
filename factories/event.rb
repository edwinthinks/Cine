FactoryBot.define do
  factory :event do
    association :movie
    date { Faker::Date.between(from: 3.months.ago, to: 3.months.from_now) }
    time_start { Faker::Time.between(from: 1.hours.from_now, to: 2.hours.from_now) }
    time_end { Faker::Time.between(from: 2.hours.from_now, to: 3.hours.from_now) }
    capacity { 60 }
    hall { Faker::Name.name }
  end
end
