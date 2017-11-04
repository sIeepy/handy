class ProfilesController < ApplicationController

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { Profile.find(params[:id]) }

  def update
    if profile.update_attributes(profile_params)
      redirect_to user_path, notice: 'Profile succesfully updated'
    else
      redirect_to user_path, message: 'Profile not updated'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number)
  end
end
