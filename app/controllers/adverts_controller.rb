class AdvertsController < ApplicationController

  def index
    @adverts = Advert.all
  end

  def show
    @advert = Advert.find(params[:id])
    @favorite =  current_user.favorites.find_by(advert_id: @advert.id)
  end

end
