class FavoritesController < ApplicationController

    def index
      @user = current_user
      @favorites = @user.favorites
    end

  def create
    @flat = Flat.find(params[:flat_id])
    @favorite = Favorite.new
    @favorite.flat = @flat
    @favorite.user = current_user
    @favorite.save

    redirect_to user_favorites_path(current_user)
  end

end
