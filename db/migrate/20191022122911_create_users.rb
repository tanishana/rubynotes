class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.bigint :contact
      t.string :emailid

      t.timestamps
    end
  end
end
