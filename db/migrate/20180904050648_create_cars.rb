class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :cartype
      t.string :owner
      t.string :queue
      t.string :platnum
      t.timestamps
    end
  end
end
