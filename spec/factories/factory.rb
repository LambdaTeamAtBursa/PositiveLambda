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
    tags {[FactoryGirl.create(:tag)]}
  end

  factory :tag do
    name { Faker::Lorem.word }
  end

  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory :comment do
    text { Faker::Lorem.sentence }
    association :cyte
    association :user

    factory :comment_with_parent_comment do
      association :parent_comment, factory: :comment
    end
  end

end
