# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    name { Faker::Name.name }
    description { Faker::Coffee.variety }
  end
end
