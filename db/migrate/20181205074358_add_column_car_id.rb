class AddColumnCarId < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spaces, :car_id, :integer
  end
end
