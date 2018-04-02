json.extract! tblbooking, :id, :dateTime, :tbl_schedules_id, :isPaid, :tbl_dogs_id, :tbl_users_id, :tbl_services_id, :created_at, :updated_at
json.url tblbooking_url(tblbooking, format: :json)
