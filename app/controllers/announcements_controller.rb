class AnnouncementsController < ApplicationController
  expose_decorated(:announcements) { Announcement.all.order('created_at DESC') }
  expose_decorated(:announcement)

  def show
    user_id = announcement.user_id
    place = User.find(user_id).address
    @hash = Gmaps4rails.build_markers(place) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow [user.street_name, user.building_number, user.city,
                         user.voivodeship].compact.join(', ')
    end
  end

  def create
    announcement = current_user.announcements.create(announcement_params)
    if announcement.save
      redirect_to announcements_path
    else

    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:content, :announ_type, :title, :price)
  end
end
