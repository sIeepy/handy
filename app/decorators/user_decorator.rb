class UserDecorator < Draper::Decorator
  delegate_all

  def user_validation
    user.id == h.current_user.id
  end
end
