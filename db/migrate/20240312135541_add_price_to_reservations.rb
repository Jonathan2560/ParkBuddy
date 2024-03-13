class AddPriceToReservations < ActiveRecord::Migration[7.1]
  def change
    add_monetize :reservations, :price, currency: { present: false }
  end
end
