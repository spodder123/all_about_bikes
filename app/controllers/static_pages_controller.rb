class StaticPagesController < ApplicationController
  def index
    @city_bikes = CityBike.page(params[:page]).per(30)
  end

  def about
  end
end
