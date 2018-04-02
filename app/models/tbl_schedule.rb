class TblSchedule < ApplicationRecord



	def full_message
		@test = "#{test_message}"
      	"#{dateTime} | #{isTaken} | #{@test}"
    end

    def test_message
    	if self.tbl_users_id.nil?
    		@name = "NULL"
    	else
    		@name = TblUser.find(self.tbl_users_id).full_name
    	end
    end
end
