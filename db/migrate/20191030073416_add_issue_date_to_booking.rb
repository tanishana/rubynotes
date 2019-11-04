class AddIssueDateToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :issue_date, :date
  end
end
