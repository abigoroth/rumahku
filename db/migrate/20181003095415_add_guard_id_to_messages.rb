class AddGuardIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :guard_id, :bigint
  end
end
