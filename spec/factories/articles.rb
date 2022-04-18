FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    content { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
    published { false }
    user
    serie { nil }
  end
end
