FactoryBot.define do
  factory :settlement do
    name { Faker::Address.country }
    municipality
  end
end
