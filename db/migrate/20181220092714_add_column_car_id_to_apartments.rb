class AddColumnCarIdToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :car_id, :integer
  end
end
