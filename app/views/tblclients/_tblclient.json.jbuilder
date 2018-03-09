json.extract! tblclient, :id, :clientID, :firstName, :lastName, :password, :phoneNumber, :email, :address, :postalCode, :created_at, :updated_at
json.url tblclient_url(tblclient, format: :json)
