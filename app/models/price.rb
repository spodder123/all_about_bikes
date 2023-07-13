class Price < ApplicationRecord
  belongs_to :city_bike
  belongs_to :country
end
