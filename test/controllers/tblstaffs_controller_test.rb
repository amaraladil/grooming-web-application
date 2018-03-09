require 'test_helper'

class TblstaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tblstaff = tblstaffs(:one)
  end

  test "should get index" do
    get tblstaffs_url
    assert_response :success
  end

  test "should get new" do
    get new_tblstaff_url
    assert_response :success
  end

  test "should create tblstaff" do
    assert_difference('Tblstaff.count') do
      post tblstaffs_url, params: { tblstaff: { address: @tblstaff.address, email: @tblstaff.email, firstName: @tblstaff.firstName, lastName: @tblstaff.lastName, password: @tblstaff.password, phoneNumber: @tblstaff.phoneNumber, postalCode: @tblstaff.postalCode, staffID: @tblstaff.staffID } }
    end

    assert_redirected_to tblstaff_url(Tblstaff.last)
  end

  test "should show tblstaff" do
    get tblstaff_url(@tblstaff)
    assert_response :success
  end

  test "should get edit" do
    get edit_tblstaff_url(@tblstaff)
    assert_response :success
  end

  test "should update tblstaff" do
    patch tblstaff_url(@tblstaff), params: { tblstaff: { address: @tblstaff.address, email: @tblstaff.email, firstName: @tblstaff.firstName, lastName: @tblstaff.lastName, password: @tblstaff.password, phoneNumber: @tblstaff.phoneNumber, postalCode: @tblstaff.postalCode, staffID: @tblstaff.staffID } }
    assert_redirected_to tblstaff_url(@tblstaff)
  end

  test "should destroy tblstaff" do
    assert_difference('Tblstaff.count', -1) do
      delete tblstaff_url(@tblstaff)
    end

    assert_redirected_to tblstaffs_url
  end
end
