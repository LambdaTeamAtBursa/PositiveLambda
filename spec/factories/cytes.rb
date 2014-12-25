FactoryGirl.define do
    require 'faker'
  factory :cyte do
    text { Faker::Lorem.sentence }
    association :creator, factory: :user
    association :category, factory: :cyte_category
  end

end
