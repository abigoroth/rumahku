class RenameColumnApartmentTypeinTableApartmenttoapartmentType < ActiveRecord::Migration[5.2]
  def change
    rename_column :apartments, :ApartmentType, :apartment_type
  end
end
