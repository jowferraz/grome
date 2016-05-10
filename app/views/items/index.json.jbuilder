json.array!(@items) do |item|
  json.extract! item, :id, :type, :date_cad, :alert, :status
  json.url item_url(item, format: :json)
end
