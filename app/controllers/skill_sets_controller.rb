class SkillSetsController < ApplicationController
  expose_decorated(:skill_sets) { SkillSet.all }
  expose_decorated(:skill_set)  { SkillSet.find(params[:id]) }
  expose_decorated(:skills) { Skill.all }

  def create
    skill_set = current_user.skill_sets.create(skill_set_params)
    if skill_set.save
      redirect_to user_path(current_user), notice: 'Profile succesfully updated'
    else
      redirect_to user_path(current_user), message: 'Profile not updated'
    end
  end

  def update
    if skill_set.update_attributes(skill_set_params)
      redirect_to user_path(current_user), notice: 'Profile succesfully updated'
    else
      redirect_to user_path(current_user), message: 'Profile not updated'
    end
  end

  def destroy
    if current_user.id == skill_set.user_id
      skill_set.destroy
      redirect_to user_path(current_user), notice: 'Profile succesfully deleted'
    else
      redirect_to user_path(current_user), message: 'Profile can not be deleted'
    end
  end

  private

  def skill_set_params
    params.require(:skill_set).permit!
  end
end
