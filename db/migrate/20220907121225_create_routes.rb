class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.string :name
    end
  end
end
