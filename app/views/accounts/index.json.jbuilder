json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :cpf, :rg, :street, :number, :zipcode, :country, :accept_terms, :user_id
  json.url account_url(account, format: :json)
end
