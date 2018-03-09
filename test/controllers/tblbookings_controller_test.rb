require 'test_helper'

class TblbookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tblbooking = tblbookings(:one)
  end

  test "should get index" do
    get tblbookings_url
    assert_response :success
  end

  test "should get new" do
    get new_tblbooking_url
    assert_response :success
  end

  test "should create tblbooking" do
    assert_difference('Tblbooking.count') do
      post tblbookings_url, params: { tblbooking: { bookingID: @tblbooking.bookingID, dateTime: @tblbooking.dateTime, dogID: @tblbooking.dogID, isPaid?: @tblbooking.isPaid?, serviceID: @tblbooking.serviceID, staffID: @tblbooking.staffID } }
    end

    assert_redirected_to tblbooking_url(Tblbooking.last)
  end

  test "should show tblbooking" do
    get tblbooking_url(@tblbooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_tblbooking_url(@tblbooking)
    assert_response :success
  end

  test "should update tblbooking" do
    patch tblbooking_url(@tblbooking), params: { tblbooking: { bookingID: @tblbooking.bookingID, dateTime: @tblbooking.dateTime, dogID: @tblbooking.dogID, isPaid?: @tblbooking.isPaid?, serviceID: @tblbooking.serviceID, staffID: @tblbooking.staffID } }
    assert_redirected_to tblbooking_url(@tblbooking)
  end

  test "should destroy tblbooking" do
    assert_difference('Tblbooking.count', -1) do
      delete tblbooking_url(@tblbooking)
    end

    assert_redirected_to tblbookings_url
  end
end
