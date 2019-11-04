class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :route_name
      t.string :serviceno
      t.integer :total_seat
      t.integer :origin
      t.integer :destination
      t.integer :fare
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
