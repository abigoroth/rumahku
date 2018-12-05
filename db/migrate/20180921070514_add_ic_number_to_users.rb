class AddIcNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :IC_number, :string
  end
end
