class AddAptnumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :aptnum, :string
  end
end
