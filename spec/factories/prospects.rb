FactoryBot.define do
  factory :prospect do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.unique.email }
    phone { FFaker::PhoneNumber.unique.phone_number }

    trait :producer do
      kind { 'producer' }
    end

    trait :user do
      kind { 'user' }
    end
  end
end
