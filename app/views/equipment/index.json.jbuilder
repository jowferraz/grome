json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :type, :name, :brand, :model, :color, :serial, :details, :alert, :date_cad, :date_buy, :item_id, :gear_id
  json.url equipment_url(equipment, format: :json)
end
