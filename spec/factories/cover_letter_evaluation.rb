# frozen_string_literal: true

FactoryGirl.define do
  factory :cover_letter_evaluation do
    name Faker::Name.name
    email Faker::Internet.email
    cover_letter Faker::File.file_name
  end
end
