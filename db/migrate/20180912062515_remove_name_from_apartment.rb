class RemoveNameFromApartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :Name, :string
  end
end
