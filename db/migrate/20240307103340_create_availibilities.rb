class CreateAvailibilities < ActiveRecord::Migration[7.1]
  def change
    create_table :availibilities do |t|
      t.string :address
      t.datetime :from
      t.datetime :until

      t.timestamps
    end
  end
end
