class AddGuestIDinTableApartment < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :guest_id, :integer
  end
end
