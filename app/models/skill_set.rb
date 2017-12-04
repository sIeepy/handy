class SkillSet < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  validates :level, numericality: { only_integer: true }, inclusion: 1..5
  validates :user_id, uniqueness: { scope: :skill_id }

  def skill_name
    skill.try(:name)
  end

  def skill_name=(name)
    self.skill = Skill.find_or_create_by(name: name) if name.present?
  end
end
