FactoryGirl.define do
  factory :beer do
    name Faker::Name.first_name
  end
end
