class AddHouseMemberRelationshipToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :house_member_relationship, :string
  end
end
