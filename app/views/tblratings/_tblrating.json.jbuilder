json.extract! tblrating, :id, :ratingID, :rating, :comment, :clientID, :created_at, :updated_at
json.url tblrating_url(tblrating, format: :json)
