class AnnouncementDecorator < Draper::Decorator
  delegate_all

  def selection
    %w[Electric Mechanic Transport Garden Painting Renovate Other]
  end

  def creation
    now = Time.zone.now
    create = object.created_at
    if TimeDifference.between(create, now).in_minutes <= 59
      "#{TimeDifference.between(create, now).in_minutes.to_i} minutes"
    else
      "#{TimeDifference.between(create, now).in_hours.to_i} hours"
    end
  end
end
