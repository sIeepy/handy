class Skill < ApplicationRecord
  has_many :skill_sets

  validates_uniqueness_of :name
end
