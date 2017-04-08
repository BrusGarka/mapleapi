class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
        t.string :name
        t.string :school
        t.integer :semesters
        t.decimal :price
        t.integer :degree
        t.belongs_to :cities
        t.timestamps
    end
  end
end
