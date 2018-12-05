class AddEndRentToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :end_rent, :date
  end
end
