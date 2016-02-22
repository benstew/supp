json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :serving_size, :size, :family, :goal_id
  json.url product_url(product, format: :json)
end
