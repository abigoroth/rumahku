class AddGuestOutToGuest < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :guest_out, :datetime
  end
end
