class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :width, :length, :price_per_minute, :name, presence: true

  def total_earnings
    total = 0
    reservations.each { |reservation| total += ((reservation.until - reservation.from).to_i / 60) * price_per_minute }
    total.round
  end

  def renters
    count = 0
    User.all.each do |user|
      count += 1 if user.reservations
    end
    count
  end

  def avg_difference
    price_sum = 0
    Garage.near(address, 3).each { |garage| price_sum += garage.price_per_minute }
    difference_in_price = price_per_minute - (price_sum / Garage.count)

    if difference_in_price.negative?
      "Your price is €#{difference_in_price.abs.round(2)} cheaper than the average price in your area."
    elsif difference_in_price.positive?
      "Your price is €#{difference_in_price.round(2)} more expensive than the average price in your area."
    else
      "Your price is the same as the average price."
    end
  end
end
