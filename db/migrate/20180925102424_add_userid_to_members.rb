class AddUseridToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :user_id, :bigint
  end
end
