class CreateJeng2s < ActiveRecord::Migration[5.2]
  def change
    create_table :jeng2s do |t|
      t.string :name
      t.text :age
      t.text :parking_number
      t.text :phone_number
      t.text :number_apartment
      t.text :level
      t.string :apartment_type

      t.timestamps
    end
  end
end
