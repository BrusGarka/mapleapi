json.provinces @provinces do |p|
    json.id p.id
    json.name p.name
    json.cities p.cities.order(:name) do |c|
        json.id c.id
        json.name c.name
    end
end