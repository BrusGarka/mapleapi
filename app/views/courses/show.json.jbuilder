json.(@course, :name,  :school, :semesters,  :price,  :degree)
json.city do
    json.id @course.city.id
    json.name @course.city.name
end