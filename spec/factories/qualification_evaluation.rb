# frozen_string_literal: true

FactoryGirl.define do
  factory :qualification_evaluation do
    name Faker::Name.name
    email Faker::Internet.email
    job_posting Faker::Internet.url
    resume Faker::File.file_name
  end
end
