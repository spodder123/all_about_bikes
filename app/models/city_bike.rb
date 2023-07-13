class CityBike < ApplicationRecord
  belongs_to :country
  has_many :prices
end
