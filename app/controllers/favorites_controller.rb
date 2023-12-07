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
    if @favorite.save
      flash.notice = "Ajouté aux favoris !"
    else
      flash.alert = "Vous devez être connecté pour ajouter un favori"
    end
  end
end
