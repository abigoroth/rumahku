class AddPhonenumToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phonenum, :string
  end
end
