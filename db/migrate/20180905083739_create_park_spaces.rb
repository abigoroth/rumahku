class CreateParkSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :park_spaces do |t|
      t.string :parknum
      t.string :spacetype
      t.boolean :available

      t.timestamps
    end
  end
end
