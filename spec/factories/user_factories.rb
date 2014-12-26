FactoryGirl.define do
  require 'faker'

  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    name { Faker::Name.name }
  end
end