<<<<<<< HEAD
class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :plat_number
      t.string :block
      t.string :no_apartment
      t.date :date
      t.string :phone_number
      t.text :purpose

      t.timestamps
    end
  end
end
=======
class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :plat_number
      t.string :block
      t.string :no_apartment
      t.date :date
      t.string :phone_number
      t.text :purpose

      t.timestamps
    end
  end
end
>>>>>>> 6c0fc0d134d542fcdbd0c0602a0de364ad80eff7
