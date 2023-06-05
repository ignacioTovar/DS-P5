json.extract! detalle_compra, :id, :compra_id, :forniture_id, :cantidad, :created_at, :updated_at
json.url detalle_compra_url(detalle_compra, format: :json)
