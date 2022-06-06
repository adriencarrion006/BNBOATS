class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :description
      t.string :picture
      t.string :boat_model
      t.string :licence
      t.integer :person_number
      t.integer :price
      t.string :localisation

      t.timestamps
    end
  end
end
