class AddColumnParkSpaceId < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :park_space_id, :integer
  end
end
