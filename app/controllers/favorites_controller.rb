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
    flash.notice = "Ajouté aux favoris !"
    redirect_to request.referrer
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    flash.notice = "Retiré des favoris !"
    redirect_to request.referrer
  end
end

private

def favorite_params
  params.require(:favorite).permit(:flat_id)
end
