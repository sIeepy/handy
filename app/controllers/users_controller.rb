class UsersController < ApplicationController
  helper_method :render_profile

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { user.profile }
  expose_decorated(:address) { user.address }
  expose_decorated(:skill_set) { user.skill_sets }
  expose_decorated(:skill) { user.skills }
  expose(:lol) { Skill.toplisted(current_user) }

  def render_profile(name, field_name, field_value, record_name)
    view_context.render partial: 'users/profile/text_input_content',
                        locals: { name: name,
                                  field_name: field_name,
                                  field_value: field_value,
                                  record_name: record_name }
  end

  def lols
    binding.pry
    @lods = Skill.toplisted
  end
end
