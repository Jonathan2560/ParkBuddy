class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :address, :width, :length, :price_per_hour, :name, presence: true
  validates :width, :length, :price_per_hour, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :name, :address, length: { in: 3..40 }
end
