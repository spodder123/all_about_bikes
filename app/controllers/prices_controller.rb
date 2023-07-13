class PricesController < ApplicationController
  def index
    @prices = Price.all
  end

  def show
    @price = Price.find(params[:id])
  end
end
