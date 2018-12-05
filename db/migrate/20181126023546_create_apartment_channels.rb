class CreateApartmentChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_channels do |t|
      t.jsonb :requested_date
      t.integer :apartment_id

      t.timestamps
    end
  end
end
