# frozen_string_literal: true

FactoryBot.define do
  factory :list do
    name { Faker::Name.name }
    user { association(:user) }
  end
end
