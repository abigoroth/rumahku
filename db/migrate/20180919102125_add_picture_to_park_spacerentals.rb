class AddPictureToParkSpacerentals < ActiveRecord::Migration[5.2]
  def change
    add_column :park_spacerentals, :picture, :string
  end
end
