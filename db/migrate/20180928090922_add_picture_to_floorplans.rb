class AddPictureToFloorplans < ActiveRecord::Migration[5.2]
  def change
    add_column :floorplans, :picture, :string
  end
end
