FactoryBot.define do
  factory :serie do
    title { Faker::Book.title }
    user
  end
end
