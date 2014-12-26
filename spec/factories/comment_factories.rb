FactoryGirl.define do
  require 'faker'

  factory :comment do
    text { Faker::Lorem.sentence }
    association :cyte
    association :user

    factory :comment_with_parent_comment do
      association :parent_comment, factory: :comment
    end
  end
end
