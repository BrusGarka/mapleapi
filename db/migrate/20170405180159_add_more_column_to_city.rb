class AddMoreColumnToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :mobile, :decimal
    add_column :cities, :restaurante, :decimal
    add_column :cities, :health_care, :decimal
    add_column :cities, :aluguel_fora, :decimal
    rename_column :cities, :aluguel, :aluguel_centro
  end
end
