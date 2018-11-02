class AddPictureToMapareas < ActiveRecord::Migration[5.2]
  def change
    add_column :mapareas, :picture, :string
  end
end
