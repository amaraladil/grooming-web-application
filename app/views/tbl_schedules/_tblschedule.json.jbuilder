json.extract! tblschedule, :id, :dateTime, :tbl_users_id, :isTaken, :created_at, :updated_at
json.url tblschedule_url(tblschedule, format: :json)
