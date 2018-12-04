class RemoveInfoIdFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_index :members, column: :info_id
  end
end

