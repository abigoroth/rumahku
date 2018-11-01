class AddAptnumsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :aptnums, :string
  end
end
