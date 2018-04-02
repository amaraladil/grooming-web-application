class TblBooking < ApplicationRecord
	belongs_to :tbl_user, optional: true

end
