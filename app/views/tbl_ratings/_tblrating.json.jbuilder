json.extract! tblrating, :id, :rating, :star, :comment, :tbl_users_id, :created_at, :updated_at
json.url tblrating_url(tblrating, format: :json)
