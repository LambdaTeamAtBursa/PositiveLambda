FactoryGirl.define do
    require 'faker'
  factory :cyte_category do
    name { Faker::Lorem.characters(rand(4..30)) }
    
    factory :cyte_with_parent_category do
      association :parent_category, factory: :cyte_category
    end
  end

end
