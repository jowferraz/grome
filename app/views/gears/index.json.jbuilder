json.array!(@gears) do |gear|
  json.extract! gear, :id, :type, :model, :name, :serial, :color, :brand, :details, :date_buy, :alert, :item_id, :account_id
  json.url gear_url(gear, format: :json)
end
