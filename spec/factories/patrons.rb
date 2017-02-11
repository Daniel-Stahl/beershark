FactoryGirl.define do
  factory :patron do
    member
    bio Faker::Name.last_name
  end
end
