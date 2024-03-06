class Garage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :width, :length, :price_per_minute, :name, presence: true

  def available?(start_datetime, end_datetime)
    if self.reservations.any?
      self.reservations.each do |reservation|
        if reservation.until > start_datetime && start_datetime > reservation.from
          false
        else
          if reservation.until > end_datetime && end_datetime > reservation.from
            false
          else
            true
          end
        end
      end
    else
      true
    end
  end
end
