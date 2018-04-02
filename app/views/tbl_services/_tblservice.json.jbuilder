json.extract! tblservice, :id, :serviceName, :price, :created_at, :updated_at
json.url tblservice_url(tblservice, format: :json)
