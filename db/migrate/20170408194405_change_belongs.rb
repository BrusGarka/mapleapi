class ChangeBelongs < ActiveRecord::Migration[5.0]
  def change
    rename_column :courses, :cities_id, :city_id
  end
end
