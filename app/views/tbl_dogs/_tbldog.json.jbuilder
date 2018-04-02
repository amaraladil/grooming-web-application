json.extract! tbldog, :id,  :dogName, :dogSize, :tbl_users_id, :created_at, :updated_at
json.url tbldog_url(tbldog, format: :json)
