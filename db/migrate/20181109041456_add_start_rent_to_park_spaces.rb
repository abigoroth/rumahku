class AddStartRentToParkSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spaces, :start_rent, :date
  end
end
