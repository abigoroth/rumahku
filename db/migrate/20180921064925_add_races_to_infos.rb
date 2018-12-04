class AddRacesToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :races, :string
  end
end
