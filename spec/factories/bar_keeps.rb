FactoryGirl.define do
  factory :bar_keep do
  	member
  	bio Faker::Name.last_name
  end
end
