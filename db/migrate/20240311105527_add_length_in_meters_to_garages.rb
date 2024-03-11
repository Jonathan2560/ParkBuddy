class AddLengthInMetersToGarages < ActiveRecord::Migration[7.1]
  def change
    add_column :garages, :length_in_meters, :float
  end
end
