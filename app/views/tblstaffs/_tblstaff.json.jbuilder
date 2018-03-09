json.extract! tblstaff, :id, :staffID, :firstName, :lastName, :password, :phoneNumber, :email, :address, :postalCode, :created_at, :updated_at
json.url tblstaff_url(tblstaff, format: :json)
