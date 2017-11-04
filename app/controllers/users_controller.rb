class UsersController < ApplicationController

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { User.find(params[:id]).profile }
  expose_decorated(:address) { User.find(params[:id]).address }

end
