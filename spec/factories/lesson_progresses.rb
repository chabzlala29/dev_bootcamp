FactoryBot.define do
  factory :lesson_progress do
    association :user
    association :lesson
    completed_at { nil }

    trait :completed do
      completed_at { Time.current }
    end
  end
end