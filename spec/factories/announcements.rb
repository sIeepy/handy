FactoryBot.define do
  factory :announcement do
    title { Faker::Witcher.quote }
    content { Faker::Lorem.sentences(3) }
    price { Faker::Number.number(2) }
    announ_type 'Electric'
    user
    created_at { Faker::Date.backward(14) }
  end
end
