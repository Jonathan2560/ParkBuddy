class RemoveWidthFromGarages < ActiveRecord::Migration[7.1]
  def change
    remove_column :garages, :width, :integer
  end
end
