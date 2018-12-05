class AddEmergencyNameToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :emergency_name, :string
  end
end
