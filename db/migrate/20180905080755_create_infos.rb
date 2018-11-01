class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :email
      t.string :name
      t.string :apartmentnum
      t.string :phonenumber
      t.boolean :owner
      t.string :password
      t.string :picture

      t.timestamps
    end
  end
end
