class CreateDivingsites < ActiveRecord::Migration[5.2]
  def change
    create_table :divingsites do |t|
      t.string :name
      t.integer :country_id
      t.integer :max_depth
      t.string :city

      t.timestamps
    end
  end
end
