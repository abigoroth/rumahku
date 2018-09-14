class AddParkSpaceIdToParkspacelogs < ActiveRecord::Migration[5.2]
  def change
    add_column :parkspacelogs, :park_space_id, :string
  end
end
