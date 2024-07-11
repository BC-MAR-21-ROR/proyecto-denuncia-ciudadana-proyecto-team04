FactoryBot.define do
  factory :municipality do
    name { Faker::Address.country }
    state
  end
end
