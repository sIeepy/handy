class ProfileDecorator < Draper::Decorator
  delegate_all

  def name_change
    if object.first_name.empty?
      h.render 'partials/name'
    else
      object.first_name
    end
  end

  def surname_change
    if object.last_name.empty?
      h.render 'partials/surname'
    else
      object.last_name
    end
  end

  def phone_change
    if object.phone_number.nil?
      h.render 'partials/phone_number'
    else
      object.phone_number
    end
  end
end
