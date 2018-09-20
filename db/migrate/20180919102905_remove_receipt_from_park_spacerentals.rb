class RemoveReceiptFromParkSpacerentals < ActiveRecord::Migration[5.2]
  def change
    remove_column :park_spacerentals, :receipt, :string
  end
end
