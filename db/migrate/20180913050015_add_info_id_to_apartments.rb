class AddInfoIdToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :info_id, :string
  end
end
