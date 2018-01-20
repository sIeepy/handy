FactoryBot.define do
  factory :profile do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::Number.number(9) }
    user
  end

  factory :profile_empty, parent: :profile do
    first_name ''
    last_name ''
    phone_number nil
  end

  factory :profile_invalid, parent: :profile do
    phone_number 'not number'
  end
end
