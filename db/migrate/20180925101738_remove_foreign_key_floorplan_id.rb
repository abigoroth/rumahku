class RemoveForeignKeyFloorplanId < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :mapareas, :floorplans
  end
end
