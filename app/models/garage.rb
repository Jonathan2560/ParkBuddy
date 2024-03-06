class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :address, :width, :length, :price_per_minute, :name, presence: true
end
