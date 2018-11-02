class AddAdminIdToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :admin_id, :bigint
  end
end
