class AddAptIdToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :apt_id, :string
  end
end
