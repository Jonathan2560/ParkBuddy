class AddCoordinatesToGarages < ActiveRecord::Migration[7.1]
  def change
    add_column :garages, :latitude, :float
    add_column :garages, :longitude, :float
  end
end
