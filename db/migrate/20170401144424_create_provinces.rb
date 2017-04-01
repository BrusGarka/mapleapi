class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.timestamps
    end
    add_reference(:cities, :provinces, index: true)
  end
end
