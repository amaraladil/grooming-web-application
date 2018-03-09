require 'test_helper'

class TblratingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tblrating = tblratings(:one)
  end

  test "should get index" do
    get tblratings_url
    assert_response :success
  end

  test "should get new" do
    get new_tblrating_url
    assert_response :success
  end

  test "should create tblrating" do
    assert_difference('Tblrating.count') do
      post tblratings_url, params: { tblrating: { clientID: @tblrating.clientID, comment: @tblrating.comment, rating: @tblrating.rating, ratingID: @tblrating.ratingID } }
    end

    assert_redirected_to tblrating_url(Tblrating.last)
  end

  test "should show tblrating" do
    get tblrating_url(@tblrating)
    assert_response :success
  end

  test "should get edit" do
    get edit_tblrating_url(@tblrating)
    assert_response :success
  end

  test "should update tblrating" do
    patch tblrating_url(@tblrating), params: { tblrating: { clientID: @tblrating.clientID, comment: @tblrating.comment, rating: @tblrating.rating, ratingID: @tblrating.ratingID } }
    assert_redirected_to tblrating_url(@tblrating)
  end

  test "should destroy tblrating" do
    assert_difference('Tblrating.count', -1) do
      delete tblrating_url(@tblrating)
    end

    assert_redirected_to tblratings_url
  end
end
