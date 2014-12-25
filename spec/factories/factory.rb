FactoryGirl.define do
  require 'faker'


  factory :cyte_category do
    name { Faker::Lorem.sentence }

    factory :cyte_with_parent_category do
      association :parent_category, factory: :cyte_category
    end
  end

  factory :cyte do
    text { Faker::Lorem.characters(rand(4..30)) }
    association :creator, factory: :user
    association :category, factory: :cyte_category
    association :tags, factory: :tags
  end

  factory :tag do
    name { Faker::Lorem.word }
  end

  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

end
