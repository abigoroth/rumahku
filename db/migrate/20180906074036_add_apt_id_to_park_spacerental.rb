class AddAptIdToParkSpacerental < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spacerentals, :apt_id, :string
  end
end
