class AddGstToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :gst, :float
    add_column :tickets, :total_fare, :float
  end
end
