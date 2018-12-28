class RemoveGuestInFromGuest < ActiveRecord::Migration[5.2]
  def change
    remove_column :guests, :guest_in, :time
  end
end
