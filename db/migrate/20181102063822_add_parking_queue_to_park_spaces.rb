class AddParkingQueueToParkSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spaces, :parking_queue, :string
  end
end
