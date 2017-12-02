class SkillSetsController < ApplicationController
  expose_decorated(:skill_sets) { SkillSet.all }
  expose_decorated(:skill_set)
  expose_decorated(:skills) { Skill.all }

  def create
    skill_set = current_user.skill_sets.create(skill_set_params)
    if skill_set.save
      redirect_to user_path, notice: 'Profile succesfully updated'
    else
      redirect_to user_path, message: 'Profile not updated'
    end
  end

  def update
    skill_set = current_user.skill_sets.create(skill_set_params)
    if skill_set.save
      redirect_to user_path, notice: 'Profile succesfully updated'
    else
      redirect_to user_path, message: 'Profile not updated'
    end
  end

  private

  def skill_set_params
    params.require(:skill_set).permit!
  end
end
