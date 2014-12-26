FactoryGirl.define do
  require 'faker'

  factory :tag do
    name { Faker::Lorem.word }
  end
end