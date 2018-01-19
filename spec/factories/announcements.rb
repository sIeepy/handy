FactoryBot.define do
  factory :announcement do
    title { Faker::Witcher.quote }
    content { Faker::Lorem.sentence }
    price { Faker::Number.number(2) }
    announ_type 'Electric'
    user
    created_at { Faker::Date.backward(14) }
  end
  factory :announ_invalid, parent: :announcement do
    title nil
  end
end
