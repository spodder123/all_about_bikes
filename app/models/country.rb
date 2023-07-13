class Country < ApplicationRecord
  has_many :city_bikes
  has_many :prices
end
