class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :Name
      t.text :Age
      t.text :ParkingNumber
      t.text :HpNumber
      t.text :NumberApartment
      t.text :Level
      t.string :ApartmentType

      t.timestamps
    end
  end
end
