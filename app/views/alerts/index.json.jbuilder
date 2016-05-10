json.array!(@alerts) do |alert|
  json.extract! alert, :id, :date, :hasDoc, :status, :date_update, :date_cad, :item_id, :account_id
  json.url alert_url(alert, format: :json)
end
