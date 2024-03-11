class AddWidthInMetersToGarages < ActiveRecord::Migration[7.1]
  def change
    add_column :garages, :width_in_meters, :float
  end
end
