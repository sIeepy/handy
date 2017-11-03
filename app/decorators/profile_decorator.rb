class ProfileDecorator < Draper::Decorator
  delegate_all

  def name_change
    if object.first_name.nil?
      h.render 'profiles/name'
    else
      object.first_name
    end
  end
end
