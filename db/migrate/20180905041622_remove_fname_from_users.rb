class RemoveFnameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :fname, :string
  end
end
