class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :plate_no
      t.integer :owner_id
      t.integer :sacco_id
    end
  end
end
