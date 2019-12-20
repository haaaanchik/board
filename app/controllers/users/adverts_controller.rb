class Users::AdvertsController < ApplicationController
  before_action :authenticate_user!
  def index
    @adverts = current_user.adverts
  end

  def show
    @advert = current_user.adverts.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(advert_params.merge(user_id: current_user.id))
    if @advert.save
      redirect_to advert_path(@advert)
    else
      render :new
    end
  end

  def edit
    @advert = Advert.find(params[:id])
  end

  def update
    @advert = Advert.find(params[:id])
    if @advert.update(advert_params)
      redirect_to @advert
    else
      render :edit
    end
  end

  def destroy
    @advert = Advert.find(params[:id])
    @advert.destroy
    redirect_to adverts_path
  end

  private
  def advert_params
    params.require(:advert).permit(:body, :title, :image, :price)
  end

end
