FactoryGirl.define do
	
  factory :comment do
    text { Faker::Lorem.sentence }
    association :cyte
    association :user
  end

end
