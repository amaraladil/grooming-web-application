require 'test_helper'

class TblservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tblservice = tblservices(:one)
  end

  test "should get index" do
    get tblservices_url
    assert_response :success
  end

  test "should get new" do
    get new_tblservice_url
    assert_response :success
  end

  test "should create tblservice" do
    assert_difference('Tblservice.count') do
      post tblservices_url, params: { tblservice: { price: @tblservice.price, serviceID: @tblservice.serviceID, serviceName: @tblservice.serviceName } }
    end

    assert_redirected_to tblservice_url(Tblservice.last)
  end

  test "should show tblservice" do
    get tblservice_url(@tblservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_tblservice_url(@tblservice)
    assert_response :success
  end

  test "should update tblservice" do
    patch tblservice_url(@tblservice), params: { tblservice: { price: @tblservice.price, serviceID: @tblservice.serviceID, serviceName: @tblservice.serviceName } }
    assert_redirected_to tblservice_url(@tblservice)
  end

  test "should destroy tblservice" do
    assert_difference('Tblservice.count', -1) do
      delete tblservice_url(@tblservice)
    end

    assert_redirected_to tblservices_url
  end
end
