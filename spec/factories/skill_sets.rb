FactoryBot.define do
  factory :skill_set do
    level { Faker::Number.between(1, 5) }
    user
    skill
  end

  factory :skill_set_invalid, parent: :skill_set do
    level 6
  end
end
