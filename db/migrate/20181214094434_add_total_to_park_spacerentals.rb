class AddTotalToParkSpacerentals < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spacerentals, :total, :float
  end

  def calculate_total
    sum_value = ((end_rent - start_rent)*10)
    self.total = sum_value
  end
end

