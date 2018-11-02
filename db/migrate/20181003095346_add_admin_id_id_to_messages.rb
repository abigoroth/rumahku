class AddAdminIdIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :admin_id, :bigint
  end
end
