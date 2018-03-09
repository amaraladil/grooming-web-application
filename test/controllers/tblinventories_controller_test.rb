require 'test_helper'

class TblinventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tblinventory = tblinventories(:one)
  end

  test "should get index" do
    get tblinventories_url
    assert_response :success
  end

  test "should get new" do
    get new_tblinventory_url
    assert_response :success
  end

  test "should create tblinventory" do
    assert_difference('Tblinventory.count') do
      post tblinventories_url, params: { tblinventory: { inventoryID: @tblinventory.inventoryID, name: @tblinventory.name, price: @tblinventory.price, quantity: @tblinventory.quantity } }
    end

    assert_redirected_to tblinventory_url(Tblinventory.last)
  end

  test "should show tblinventory" do
    get tblinventory_url(@tblinventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_tblinventory_url(@tblinventory)
    assert_response :success
  end

  test "should update tblinventory" do
    patch tblinventory_url(@tblinventory), params: { tblinventory: { inventoryID: @tblinventory.inventoryID, name: @tblinventory.name, price: @tblinventory.price, quantity: @tblinventory.quantity } }
    assert_redirected_to tblinventory_url(@tblinventory)
  end

  test "should destroy tblinventory" do
    assert_difference('Tblinventory.count', -1) do
      delete tblinventory_url(@tblinventory)
    end

    assert_redirected_to tblinventories_url
  end
end
