json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :order_id, :matnr, :cantidad, :unidad, :precio, :moneda, :por_um, :um, :desc1, :desc2, :desc3, :importe, :kilos
  json.url order_detail_url(order_detail, format: :json)
end
