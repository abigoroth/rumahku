class AddHouseMemberNameToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :house_member_name, :string
  end
end
