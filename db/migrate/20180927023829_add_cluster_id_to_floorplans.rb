class AddClusterIdToFloorplans < ActiveRecord::Migration[5.2]
  def change
    add_column :floorplans, :cluster_id, :string
  end
end
