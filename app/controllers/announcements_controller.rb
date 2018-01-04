class AnnouncementsController < ApplicationController
  expose_decorated(:announcements) { Announcement.all.order('created_at DESC') }
  expose_decorated(:announcement) 

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
