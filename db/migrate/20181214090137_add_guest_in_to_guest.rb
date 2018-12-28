class AddGuestInToGuest < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :guest_in, :datetime
  end
end
