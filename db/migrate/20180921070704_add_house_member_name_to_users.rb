class AddHouseMemberNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :house_member_name, :string
  end
end
