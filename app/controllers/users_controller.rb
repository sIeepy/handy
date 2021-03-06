class UsersController < ApplicationController
  helper_method :render_profile, :redirect

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { user.profile }
  expose_decorated(:address) { user.address }
  expose_decorated(:skill_sets) { user.skill_sets }
  expose(:show_skill) { Skill.listed(user) }

  def render_profile(name, field_name, field_value, record_name)
    view_context.render partial: 'users/profile/text_input_content',
                        locals: { name: name,
                                  field_name: field_name,
                                  field_value: field_value,
                                  record_name: record_name }
  end

  def redirect
    redirect_to user_path(current_user)
  end
end
