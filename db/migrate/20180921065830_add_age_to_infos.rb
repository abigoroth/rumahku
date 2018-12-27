class AddAgeToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :age, :string
  end
end
