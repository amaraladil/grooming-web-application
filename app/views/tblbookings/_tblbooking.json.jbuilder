json.extract! tblbooking, :id, :bookingID, :dateTime, :isPaid?, :dogID, :staffID, :serviceID, :created_at, :updated_at
json.url tblbooking_url(tblbooking, format: :json)
