class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :member_name
      t.string :member_age
      t.string :member_relationship
      t.belongs_to :info, foreign_key: true

      t.timestamps
    end
  end
end
