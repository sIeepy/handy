class ProfilesController < ApplicationController

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { Profile.find(params[:id]) }

  def update
    if profile.update_attributes(profile_params)
      flash[:success] = 'Profile updated'
      redirect_to user_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :lastename, :phone_number)
  end
end
