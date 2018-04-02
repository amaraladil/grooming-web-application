json.extract! tblbooking, :id, :dateTime, :isPaid, :tbl_dogs_id, :tbl_users_id, :serviceID, :created_at, :updated_at
json.url tblbooking_url(tblbooking, format: :json)
