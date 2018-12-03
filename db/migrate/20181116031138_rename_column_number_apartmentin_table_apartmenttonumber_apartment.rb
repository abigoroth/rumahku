class RenameColumnNumberApartmentinTableApartmenttonumberApartment < ActiveRecord::Migration[5.2]
  def change
    rename_column :apartments, :NumberApartment, :number_apartment
  end
end
