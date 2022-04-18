FactoryBot.define do
  factory :tag do
    title { Faker::Music.genre }
    status { :activated }
  end
end
