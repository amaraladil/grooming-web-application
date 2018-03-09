require 'test_helper'

class TbldogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbldog = tbldogs(:one)
  end

  test "should get index" do
    get tbldogs_url
    assert_response :success
  end

  test "should get new" do
    get new_tbldog_url
    assert_response :success
  end

  test "should create tbldog" do
    assert_difference('Tbldog.count') do
      post tbldogs_url, params: { tbldog: { clientID: @tbldog.clientID, dogID: @tbldog.dogID, dogName: @tbldog.dogName, dogSize: @tbldog.dogSize } }
    end

    assert_redirected_to tbldog_url(Tbldog.last)
  end

  test "should show tbldog" do
    get tbldog_url(@tbldog)
    assert_response :success
  end

  test "should get edit" do
    get edit_tbldog_url(@tbldog)
    assert_response :success
  end

  test "should update tbldog" do
    patch tbldog_url(@tbldog), params: { tbldog: { clientID: @tbldog.clientID, dogID: @tbldog.dogID, dogName: @tbldog.dogName, dogSize: @tbldog.dogSize } }
    assert_redirected_to tbldog_url(@tbldog)
  end

  test "should destroy tbldog" do
    assert_difference('Tbldog.count', -1) do
      delete tbldog_url(@tbldog)
    end

    assert_redirected_to tbldogs_url
  end
end
