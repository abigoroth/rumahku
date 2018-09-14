class CreateParkingqueues < ActiveRecord::Migration[5.2]
  def change
    create_table :parkingqueues do |t|
      t.string :name
      t.string :apartment_number
      t.date :date

      t.timestamps
    end
  end
end
