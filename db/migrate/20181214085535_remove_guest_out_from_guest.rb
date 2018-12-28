class RemoveGuestOutFromGuest < ActiveRecord::Migration[5.2]
  def change
    remove_column :guests, :guest_out, :time
  end
end
