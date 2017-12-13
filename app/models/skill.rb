class Skill < ApplicationRecord
  has_many :skill_sets
  has_many :users, through: :skill_sets

  validates_uniqueness_of :name

  scope :toplisted, lambda { |user|
    select('skills.id, skills.name, skill_sets.level, skill_sets.user_id')
    .joins(:skill_sets)
    .where('skill_sets.user_id' => user.id)
  }
end
