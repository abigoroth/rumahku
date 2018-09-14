class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :name
      t.string :phonenum
      t.boolean :owner

      t.timestamps
    end
  end
end
