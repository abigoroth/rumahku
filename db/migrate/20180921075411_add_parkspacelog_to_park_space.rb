class AddParkspacelogToParkSpace < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spaces, :parkspacelog_id, :string
  end
end
