class AddHouseMemberRelationshipToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :house_member_relationship, :string
  end
end
