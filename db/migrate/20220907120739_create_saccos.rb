class CreateSaccos < ActiveRecord::Migration[6.1]
  def change
    create_table :saccos do |t|
      t.string :name
      t.string :description
    end
  end
end
