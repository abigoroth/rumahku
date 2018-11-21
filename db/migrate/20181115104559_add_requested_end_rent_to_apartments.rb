class AddRequestedEndRentToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :requested_end_rent, :date
  end
end
