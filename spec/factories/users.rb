FactoryGirl.define do
  require 'faker'

  factory :user do
    email { Faker::Internet.email }  
    password { Faker::Internet.password }  
  end

end
