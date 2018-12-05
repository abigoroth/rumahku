class AddRequestedStartRentToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :requested_start_rent, :date
  end
end
