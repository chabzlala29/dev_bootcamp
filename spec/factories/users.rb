FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "password123" }
    password_confirmation { "password123" }

    trait :admin do
      role { :admin }
    end

    trait :student do
      role { :student }
    end
  end
end