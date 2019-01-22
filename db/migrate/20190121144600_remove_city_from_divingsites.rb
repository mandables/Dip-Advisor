class RemoveCityFromDivingsites < ActiveRecord::Migration[5.2]
  def change
    remove_column :divingsites, :city, :string
  end
end
