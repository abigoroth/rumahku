class AddHouseMemberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :house_member, :string
  end
end
