json.extract! tbldog, :id, :dogID, :dogName, :dogSize, :clientID, :created_at, :updated_at
json.url tbldog_url(tbldog, format: :json)
