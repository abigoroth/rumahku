<<<<<<< HEAD
class CreateParkspacelogs < ActiveRecord::Migration[5.2]
  def change
    create_table :parkspacelogs do |t|
      t.string :parking_no
      t.date :date
      t.text :message

      t.timestamps
    end
  end
end
=======
class CreateParkspacelogs < ActiveRecord::Migration[5.2]
  def change
    create_table :parkspacelogs do |t|
      t.string :parking_no
      t.date :date
      t.text :message

      t.timestamps
    end
  end
end
>>>>>>> 6c0fc0d134d542fcdbd0c0602a0de364ad80eff7
