class AddRequestedParkSpaceIdToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :requested_park_space_id, :integer
  end
end
