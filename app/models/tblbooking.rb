class Tblbooking < ApplicationRecord
	belongs_to :tblclient
	belongs_to :tbldog
	belongs_to :tblstaff
	belongs_to :tblservice
end
