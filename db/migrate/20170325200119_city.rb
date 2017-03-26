class City < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal :aluguel
      t.decimal :busao
      t.decimal :mercado
      t.decimal :energia
      t.decimal :internet
      t.decimal :academia
      t.decimal :role
      t.decimal :roupas
      t.decimal :salariomedio

      t.timestamps
    end
  end
end
