FactoryBot.define do
  factory :profile do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.cell_phone }
  end

  factory :profile_empty, parent: :profile do
    first_name ''
    last_name ''
    phone_number nil
  end
end
