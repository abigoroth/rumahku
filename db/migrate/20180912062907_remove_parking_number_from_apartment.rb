class RemoveParkingNumberFromApartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :ParkingNumber, :string
  end
end
