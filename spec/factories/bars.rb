FactoryGirl.define do
  factory :bar do
  	name Faker::Name.first_name 
  end
end
