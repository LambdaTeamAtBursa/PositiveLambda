FactoryGirl.define do
    require 'faker'
  factory :cyte do
    text { Faker::Lorem.characters(rand(4..30)) }
    association :creator, factory: :user
    association :category, factory: :cyte_category
  end

end
