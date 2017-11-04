class AddressDecorator < Draper::Decorator
  delegate_all

  def street_change
    if object.street_name.empty?
      h.render 'partials/street'
    else
      object.street_name
    end
  end

  def city_change
    if object.city.empty?
      h.render 'partials/city'
    else
      object.city
    end
  end

  def voivodeship_change
    if object.voivodeship.empty?
      h.render 'partials/voivodeship'
    else
      object.voivodeship
    end
  end

  def appartment_number_change
    if object.appartment_number.nil?
      h.render 'partials/appartment_number'
    else
      object.appartment_number
    end
  end

  def building_number_change
    if object.building_number.nil?
      h.render 'partials/building_number'
    else
      object.building_number
    end
  end
end
