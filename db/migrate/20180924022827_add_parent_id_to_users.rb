class AddParentIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :parent_id, :string
  end
end
