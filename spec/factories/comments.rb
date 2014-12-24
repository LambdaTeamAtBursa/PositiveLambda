FactoryGirl.define do
	
  factory :comment do
    text { Faker::Lorem.words(rand(4..10)) }
    association :cyte
    association :user
  end

end
