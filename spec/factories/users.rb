# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name          { Faker::Name.name }
    email         { Faker::Internet.email }
    description   { Faker::Coffee.variety }
    password      { Faker::Alphanumeric.alpha(number: 6) }
  end
end
