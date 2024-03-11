class RemoveLengthFromGarages < ActiveRecord::Migration[7.1]
  def change
    remove_column :garages, :length, :integer
  end
end
