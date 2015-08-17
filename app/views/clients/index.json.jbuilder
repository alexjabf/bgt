json.array!(@clients) do |client|
  json.extract! client, :id, :name1, :name2, :cond_pago, :moneda, :centro, :clientesnumcte, :clientesnumcte2
  json.url client_url(client, format: :json)
end
