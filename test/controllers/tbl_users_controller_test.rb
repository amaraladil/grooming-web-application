require 'test_helper'

class TblUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tbl_users_new_url
    assert_response :success
  end

end
