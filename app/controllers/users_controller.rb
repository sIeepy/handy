class UsersController < ApplicationController
  helper_method :render_profile

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { User.find(params[:id]).profile }
  expose_decorated(:address) { User.find(params[:id]).address }
  expose_decorated(:skill_set)
  expose_decorated(:skills) { Skill.all } 

  def render_profile(name, field_name, field_value, record_name)
    view_context.render partial: 'users/profile/text_input_content',
                        locals: { name: name,
                                  field_name: field_name,
                                  field_value: field_value,
                                  record_name: record_name }
  end
end
