class AddColumnApartmentId < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :apartment_id, :integer
  end
end
