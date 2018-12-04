class RemoveNoApartmentFromGuest < ActiveRecord::Migration[5.2]
  def change
    remove_column :guests, :no_apartment, :string
  end
end
