class Rename < ActiveRecord::Migration[5.0]
  def change
    rename_column :courses, :type, :category
  end
end
