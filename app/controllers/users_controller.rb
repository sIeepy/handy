class UsersController < ApplicationController

  expose(:users)
  expose(:user) {User.find(params[:id])}

end
