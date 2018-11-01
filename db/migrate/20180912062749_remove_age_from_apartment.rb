class RemoveAgeFromApartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :Age, :string
  end
end
