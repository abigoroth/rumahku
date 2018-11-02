class AddReceiptToParkSpacerentals < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spacerentals, :receipt, :string
  end
end
