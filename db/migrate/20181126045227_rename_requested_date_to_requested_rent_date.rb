class RenameRequestedDateToRequestedRentDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :apartment_channels, :requested_date, :requested_rent_date 
  end
end
