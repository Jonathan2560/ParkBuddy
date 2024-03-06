class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :width, :length, :price_per_hour, :name, presence: true
  validates :width, :length, :price_per_hour, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :name, :address, length: { in: 3..40 }
end
