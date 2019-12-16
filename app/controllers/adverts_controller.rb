class AdvertsController < ApplicationController

  def index
    @adverts = Advert.all
  end

  def show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(advert_params)
    if @advert.save
      redirect_to @advert
    else
      render :new
    end
  end

  private
  def advert_params
    params.require(:advert).permit(:body)
  end
end
