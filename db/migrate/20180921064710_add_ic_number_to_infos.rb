class AddIcNumberToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :IC_number, :string
  end
end
