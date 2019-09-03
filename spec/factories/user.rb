FactoryBot.define do
  factory :user do
    name          { Faker::Name.name }
    email         { Faker::Internet.email }
    description   { Faker::Quote.famous_last_words }
  end
end