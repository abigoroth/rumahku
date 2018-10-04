class AddGuardIdToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :guard_id, :bigint
  end
end
