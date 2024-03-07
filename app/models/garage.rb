class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :width, :length, :price_per_minute, :name, presence: true
end
