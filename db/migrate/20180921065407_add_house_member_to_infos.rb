class AddHouseMemberToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :house_member, :string
  end
end
