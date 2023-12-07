class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def flats
    @user = current_user
    @flats = @user.flats
  end

end
