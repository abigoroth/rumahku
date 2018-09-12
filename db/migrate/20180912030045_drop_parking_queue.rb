class DropParkingQueue < ActiveRecord::Migration[5.2]
  def change
    drop_table :parkingqueues
  end
end
