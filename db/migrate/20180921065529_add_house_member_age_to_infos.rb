class AddHouseMemberAgeToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :house_member_age, :string
  end
end
