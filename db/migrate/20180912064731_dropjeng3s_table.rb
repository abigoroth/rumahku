class DropJeng3sTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :jeng3s
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

