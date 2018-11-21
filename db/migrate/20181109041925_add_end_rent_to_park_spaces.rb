class AddEndRentToParkSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spaces, :end_rent, :date
  end
end
