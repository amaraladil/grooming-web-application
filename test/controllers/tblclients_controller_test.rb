require 'test_helper'

class TblclientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tblclient = tblclients(:one)
  end

  test "should get index" do
    get tblclients_url
    assert_response :success
  end

  test "should get new" do
    get new_tblclient_url
    assert_response :success
  end

  test "should create tblclient" do
    assert_difference('Tblclient.count') do
      post tblclients_url, params: { tblclient: { address: @tblclient.address, clientID: @tblclient.clientID, email: @tblclient.email, firstName: @tblclient.firstName, lastName: @tblclient.lastName, password: @tblclient.password, phoneNumber: @tblclient.phoneNumber, postalCode: @tblclient.postalCode } }
    end

    assert_redirected_to tblclient_url(Tblclient.last)
  end

  test "should show tblclient" do
    get tblclient_url(@tblclient)
    assert_response :success
  end

  test "should get edit" do
    get edit_tblclient_url(@tblclient)
    assert_response :success
  end

  test "should update tblclient" do
    patch tblclient_url(@tblclient), params: { tblclient: { address: @tblclient.address, clientID: @tblclient.clientID, email: @tblclient.email, firstName: @tblclient.firstName, lastName: @tblclient.lastName, password: @tblclient.password, phoneNumber: @tblclient.phoneNumber, postalCode: @tblclient.postalCode } }
    assert_redirected_to tblclient_url(@tblclient)
  end

  test "should destroy tblclient" do
    assert_difference('Tblclient.count', -1) do
      delete tblclient_url(@tblclient)
    end

    assert_redirected_to tblclients_url
  end
end
