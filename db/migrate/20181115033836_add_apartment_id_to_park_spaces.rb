class AddApartmentIdToParkSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spaces, :apartment_id, :integer
  end
end
