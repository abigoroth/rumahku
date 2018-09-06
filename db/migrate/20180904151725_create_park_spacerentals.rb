class CreateParkSpacerentals < ActiveRecord::Migration[5.2]
  def change
    create_table :park_spacerentals do |t|
      t.string :ps_id
      t.string :car_id
      t.date :start_rent
      t.date :end_rent
      t.string :price

      t.timestamps
    end
  end
end
