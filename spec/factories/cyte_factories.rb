FactoryGirl.define do
  require 'faker'


  factory :cyte_category do
    name { Faker::Lorem.sentence }

    factory :cyte_with_parent_category do
      association :parent_category, factory: :cyte_category
    end
  end

  factory :cyte do
    text { Faker::Lorem.sentence }
    association :creator, factory: :user
    association :category, factory: :cyte_category

    factory :cyte_with_tags do
      after(:create) { |instance| create_list(:tag, 5) }
    end

  end
end