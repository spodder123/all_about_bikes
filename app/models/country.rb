class Country < ApplicationRecord
  has_many :city_bikes
  has_many :prices

  validates :name, uniqueness: true
end
