FactoryBot.define do
  factory :lesson do
    sequence(:title) { |n| "Lesson #{n}" }
    content { Faker::Lorem.paragraphs(number: 3).join("\n") }
    position { 1 }
    free { false }

    association :course
  end
end