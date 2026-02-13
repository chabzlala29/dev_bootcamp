FactoryBot.define do
  factory :course do
    sequence(:title) { |n| "Course #{n}" }
    description { Faker::Lorem.paragraph }
    published { true }
  end
end