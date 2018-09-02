FactoryBot.define do
  factory :administrator do
    email { FFaker::Internet.unique.email }
    password { FFaker::Internet.password }

    trait :locked do
      locked_at { Time.now }
    end
  end
end
