class CityBikesController < ApplicationController
  def index
    @city_bikes = CityBike.all
  end

  def show
    @city_bike = CityBike.find(params[:id])
  end
end
