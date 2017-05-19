# frozen_string_literal: true

FactoryGirl.define do
  factory :resume_evaluation do
    name Faker::Name.name
    email Faker::Internet.email
    resume Faker::File.file_name
  end
end
