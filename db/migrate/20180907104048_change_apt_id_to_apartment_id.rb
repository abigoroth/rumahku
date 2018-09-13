class ChangeAptIdToApartmentId < ActiveRecord::Migration[5.2]
  def change
    rename_column :cars, :apt_id, :apartment_id        
  end
end
