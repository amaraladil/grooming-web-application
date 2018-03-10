json.extract! tblservice, :id, :serviceID, :serviceName, :price, :created_at, :updated_at
json.url tblservice_url(tblservice, format: :json)
