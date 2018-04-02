class TblBooking < ApplicationRecord
	belongs_to :tbl_user, optional: true

	validates :tbl_schedules_id, presence: true, uniqueness: { case_sensitive: false }
end
