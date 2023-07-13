class PricesController < ApplicationController
  def index
    @prices = Price.page(params[:page]).per(30)
  end

  def show
    @price = Price.find(params[:id])
  end
end
