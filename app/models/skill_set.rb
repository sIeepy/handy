class SkillSet < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  def skill_name
    skill.try(:name)
  end

  def skill_name=(name)
    self.skill = Skill.find_or_create_by(name: name) if name.present?
  end
end
