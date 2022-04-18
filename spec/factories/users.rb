FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    password { "123456" }
    password_confirmation { "123456" }
    bio { Faker::Lorem.paragraphs(number: 1) }
  end
end
