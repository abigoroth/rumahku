class RenameColumnLevelinTableApartmenttolevel < ActiveRecord::Migration[5.2]
  def change
    rename_column :apartments, :Level, :level
  end
end
