FactoryBot.define do
  factory :hastag do
    tagable_type { "MyString" }
    tag
    tagable
  end
end
