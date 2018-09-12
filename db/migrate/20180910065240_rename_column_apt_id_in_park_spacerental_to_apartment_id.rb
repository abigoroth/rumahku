class RenameColumnAptIdInParkSpacerentalToApartmentId < ActiveRecord::Migration[5.2]
  def change
    rename_column :park_spacerentals, :apt_id, :apartment_id
  end
end
