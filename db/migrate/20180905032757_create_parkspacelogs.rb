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
