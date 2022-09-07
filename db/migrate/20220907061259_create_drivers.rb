class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :license_no
      t.integer :identity_card_no
      t.integer :vehicle_id
      t.integer :route_id
    end
  end
end
