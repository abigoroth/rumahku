class AddEmergencyContactToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :emergency_contact, :string
  end
end
