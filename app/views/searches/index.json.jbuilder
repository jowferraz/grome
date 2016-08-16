json.array!(@searches) do |search|
  json.extract! search, :id, :itemtp, :serial, :model, :name, :brand, :color, :details, :references
  json.url search_url(search, format: :json)
end
