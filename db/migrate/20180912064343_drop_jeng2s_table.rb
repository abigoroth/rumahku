class DropJeng2sTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :jeng2s
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
