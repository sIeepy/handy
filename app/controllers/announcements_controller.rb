class AnnouncementsController < ApplicationController
  expose_decorated(:announcements) { Announcement.all }
  expose_decorated(:announcement)

  def create
    announcement = current_user.announcements.build(announcement_params)
    if announcement.save
      redirect_to announcements_path
    else

    end
  end


  private

  def announcement_params
    params.require(:announcement).permit(:content, :type, :title, :price)
  end
end
