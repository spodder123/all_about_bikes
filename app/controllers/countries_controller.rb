class CountriesController < ApplicationController
  def index
    @countries = Country.page(params[:page]).per(20)
  end

  def show
    @country = Country.find(params[:id])

  end
end
