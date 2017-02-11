FactoryGirl.define do
  factory :bar_keep do
  	member
  	company_name Faker::Name.first_name
  	bio Faker::Name.last_name
  end
end
