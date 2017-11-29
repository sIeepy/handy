class AnnouncementDecorator < Draper::Decorator
  delegate_all

  def selection
    %w[Electric Mechanic Transport Garden Painting Renovate Other]
  end

end
