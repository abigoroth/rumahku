class AddRequestedRentDateToAparments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :requested_rent_date, :jsonb
  end
end
