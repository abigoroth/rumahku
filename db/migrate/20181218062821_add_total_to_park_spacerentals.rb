class AddTotalToParkSpacerentals < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spacerentals, :total, :decimal
  end
end
