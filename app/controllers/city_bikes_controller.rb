class CityBikesController < ApplicationController
  def index
    @city_bikes = CityBike.page(params[:page]).per(30)
  end

  def show
    @city_bike = CityBike.find(params[:id])
  end

  def search
    if params[:search].present?
      @city_bikes = CityBike.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(30)
    end

    if @city_bikes.empty?
      @message = "No matching results found."
    end
  end
end

