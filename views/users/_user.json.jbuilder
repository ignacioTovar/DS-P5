json.extract! user, :id, :nombre, :dni, :correo, :domicilio, :pass, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
