json.categories @courses do |category|
    json.category category
    json.courses Course.where(category: category).order(:name) do |course|
        json.(course, :id, :combo)
    end
end