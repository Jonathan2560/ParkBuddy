class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :garage

  monetize :price_cents

  validates :from, :until, presence: true
  validates :from, comparison: { greater_than: DateTime.now }
  validates :until, comparison: { greater_than: :from }

  def calc_total_price
    return (((self.until - self.from)).to_i / 60) * self.garage.price_per_minute * 100
  end
end
