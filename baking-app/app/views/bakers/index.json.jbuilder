json.array!(@bakers) do |baker|
  json.extract! baker, :id, :name, :gluten_free, :zip_code
  json.url baker_url(baker, format: :json)
end
