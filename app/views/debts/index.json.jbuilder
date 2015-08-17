json.array!(@debts) do |debt|
  json.extract! debt, :id, :client_id, :fecha, :clase_doc, :referencia, :fecha_venc, :dias_venc, :saldo, :moneda, :column
  json.url debt_url(debt, format: :json)
end
