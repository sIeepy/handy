FactoryBot.define do
  factory :address do
    city { Faker::Address.city }
    street_name { Faker::Address.street_name }
    voivodeship { Faker::Address.state }
    appartment_number { Faker::Number.between(1, 100) }
    building_number { Faker::Address.building_number }
  end
end
