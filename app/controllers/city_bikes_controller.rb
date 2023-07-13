class CityBikesController < ApplicationController
  def index
    @city_bikes = CityBike.page(params[:page]).per(30)
  end

  def show
    @city_bike = CityBike.find(params[:id])
  end
end
