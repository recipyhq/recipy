FactoryBot.define do
  factory :user do
    email { FFaker::Internet.unique.email }
    password { FFaker::Internet.password }
    confirmed_at { Time.now }

    trait :unconfirmed do
      confirmed_at { nil }
    end

    trait :locked do
      locked_at { Time.now }
    end
  end
end
