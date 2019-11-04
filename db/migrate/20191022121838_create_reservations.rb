class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :travel_date
      t.float :fare
      t.integer :aval_seat

      t.timestamps
    end
  end
end
