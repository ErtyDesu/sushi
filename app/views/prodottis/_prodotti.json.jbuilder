json.extract! prodotti, :id, :codice, :nome, :numeropezzi, :ingredienti, :prezzo, :created_at, :updated_at
json.url prodotti_url(prodotti, format: :json)
