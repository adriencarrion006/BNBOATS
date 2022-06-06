class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.references :boat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :reservation_date_begin
      t.date :reservation_date_end

      t.timestamps
    end
  end
end
