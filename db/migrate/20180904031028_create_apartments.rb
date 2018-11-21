class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.text :NumberApartment
      t.text :Level
      t.string :ApartmentType
      t.date :parking_queue

      t.timestamps
    end
  end
end
