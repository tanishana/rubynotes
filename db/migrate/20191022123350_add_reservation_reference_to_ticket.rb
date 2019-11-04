class AddReservationReferenceToTicket < ActiveRecord::Migration[5.2]
  def change
  	create_table :tickets do |t|
      t.string :pnr_no
      t.string :seat_no
      t.integer :user_id
      t.integer :fare

      t.timestamps
 	end
    add_reference :tickets, :reservation, foreign_key: true
  end
end
