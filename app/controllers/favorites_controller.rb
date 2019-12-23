class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    favorite = current_user.favorites.find_or_create_by(advert_id: params[:advert_id])
    redirect_to advert_path(favorite.advert_id)
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_to advert_path(favorite.advert_id)
  end
end
