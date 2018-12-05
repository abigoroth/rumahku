class ChangeDateFormatInTableApartments < ActiveRecord::Migration[5.2]
  def up
    change_column :apartments, :parking_queue, :datetime
  end

  def down
    change_column :apartments, :parking_queue, :date
  end
end
