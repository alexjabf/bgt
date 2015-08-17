json.array!(@orders) do |order|
  json.extract! order, :id, :client_id, :clase_ped, :numped_cte, :fecha, :forma_entrega, :cond_pago, :moneda, :centro, :fec_entrega, :flete_local, :tarifa_flete_for
  json.url order_url(order, format: :json)
end
