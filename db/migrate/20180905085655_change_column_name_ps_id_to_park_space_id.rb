class ChangeColumnNamePsIdToParkSpaceId < ActiveRecord::Migration[5.2]
  def change
    rename_column :park_spacerentals, :ps_id, :park_space_id
  end
end
