class RemoveHpNumberFromApartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :HpNumber, :string
  end
end
