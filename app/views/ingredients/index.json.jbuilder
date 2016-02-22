json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :description, :location_made, :composition, :product_id
  json.url ingredient_url(ingredient, format: :json)
end
