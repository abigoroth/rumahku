class AddParkSpaceIdToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :park_space_id, :integer
  end
end
