class CreateGarages < ActiveRecord::Migration[7.1]
  def change
    create_table :garages do |t|
      t.string :address
      t.integer :width
      t.integer :length
      t.float :price_per_hour
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
