class AddReservationReferenceToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :reservation, foreign_key: true
  end
end
