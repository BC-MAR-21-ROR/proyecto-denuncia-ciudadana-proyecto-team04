FactoryBot.define do
  factory :postal_code do
    code { Faker::Address.zip_code }
    settlement
  end
end
