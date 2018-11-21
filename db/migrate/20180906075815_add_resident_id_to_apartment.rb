class AddResidentIdToApartment < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :resident_id, :string
  end
end
