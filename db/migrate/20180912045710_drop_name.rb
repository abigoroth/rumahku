class DropName < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :Name
  end
end
