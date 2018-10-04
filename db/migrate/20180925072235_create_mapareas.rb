class CreateMapareas < ActiveRecord::Migration[5.2]
  def change
    create_table :mapareas do |t|
      t.string :description
      t.string :coordinate
      t.belongs_to :floorplan, foreign_key: true

      t.timestamps
    end
  end
end
