class CreateClusters < ActiveRecord::Migration[5.2]
  def change
    create_table :clusters do |t|
      t.string :apartment_name
      t.string :apartment_address

      t.timestamps
    end
  end
end
