class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.datetime :from
      t.datetime :until
      t.references :user, null: false, foreign_key: true
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
