class AddOccupationToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :occupation, :string
  end
end
