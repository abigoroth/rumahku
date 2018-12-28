class AddApartmentIDinTableGuest < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :apartment_id, :integer
  end
end
