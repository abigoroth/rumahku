class AddParkingQueueToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :ParkingQueue, :date
  end
end
