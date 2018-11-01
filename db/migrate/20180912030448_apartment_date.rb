class ApartmentDate < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :parking_queue, :date
  end
end
