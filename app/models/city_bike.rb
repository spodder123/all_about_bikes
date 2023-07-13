class CityBike < ApplicationRecord
  belongs_to :country
  has_many :prices

  validates :name, :company, :city, presence: true

  paginates_per 30
end
