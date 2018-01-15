json.extract! pizza, :id, :nome, :ingredientes, :tamanho, :preco, :created_at, :updated_at
json.url pizza_url(pizza, format: :json)
