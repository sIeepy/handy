class UsersController < ApplicationController
  respond_to :html, :js

  expose(:users)
  expose_decorated(:user) { User.find(params[:id]) }
  expose_decorated(:profile) { User.find(params[:id]).profile }
  expose_decorated(:address) { User.find(params[:id]).address }

  def render_text_input
    
  end
end
