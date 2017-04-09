json.(@course, :name,  :school, :semesters,  :price,  :degree, :category)
json.city do
    json.(@course.city, :id, :name,
     :aluguel_centro,  :aluguel_fora,  :energia, :mercado,
    :health_care, :roupas, :busao,  :restaurante,
    :mobile,  :internet,   :academia,  :role,
    :salariomedio,   :monthly_cost)
end