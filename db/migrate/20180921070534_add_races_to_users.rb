class AddRacesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :races, :string
  end
end
