class AddressesController < ApplicationController

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:address) { Address.find(params[:id]) }

  def update
    if address.update_attributes(address_params)
      redirect_to user_path, notice: 'Profile succesfully updated'
    else
      redirect_to user_path, error: 'Profile not updated'
    end
  end

  private

  def address_params
    params.require(:address).permit(:city, :street_name, :voivodeship,
                                    :appartment_number, :building_number,
                                    :longitude, :latitude)
  end
end
