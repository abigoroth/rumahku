class CreateJeng3s < ActiveRecord::Migration[5.2]
  def change
    create_table :jeng3s do |t|
      t.string :name
      t.string :age
      t.string :parking_number
      t.string :phone_number
      t.string :number_apartment
      t.string :level
      t.string :apartment_type

      t.timestamps
    end
  end
end
