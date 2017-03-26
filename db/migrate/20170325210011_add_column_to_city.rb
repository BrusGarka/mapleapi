class AddColumnToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :monthly_cost, :decimal
  end
end
