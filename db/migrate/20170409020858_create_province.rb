class CreateProvince < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
        t.string :name
        t.string :initials
    end
    add_reference :cities, :province, index: true
  end
end
