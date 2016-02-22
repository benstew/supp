json.array!(@goals) do |goal|
  json.extract! goal, :id, :title, :description
  json.url goal_url(goal, format: :json)
end
