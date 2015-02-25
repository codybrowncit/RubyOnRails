json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :baker_id, :date_added
  json.url recipe_url(recipe, format: :json)
end
