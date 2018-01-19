FactoryBot.define do
  factory :address do
    city { Faker::Address.city }
    street_name { Faker::Address.street_name }
    voivodeship { Faker::Address.state }
    appartment_number { Faker::Number.between(1, 100) }
    building_number { Faker::Address.building_number }
    association :user, factory: :user
  end

  factory :address_empty, parent: :address do
    city ''
    street_name ''
    voivodeship ''
    appartment_number nil
    building_number nil
  end

  factory :address_invalid, parent: :address do
    building_number 'not number'
  end
end
