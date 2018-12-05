class AddApartmentIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :apartment_id, :integer
  end
end
