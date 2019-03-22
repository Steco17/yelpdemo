require 'test_helper'

class RevoewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revoew = revoews(:one)
  end

  test "should get index" do
    get revoews_url
    assert_response :success
  end

  test "should get new" do
    get new_revoew_url
    assert_response :success
  end

  test "should create revoew" do
    assert_difference('Revoew.count') do
      post revoews_url, params: { revoew: { comment: @revoew.comment, rating: @revoew.rating } }
    end

    assert_redirected_to revoew_url(Revoew.last)
  end

  test "should show revoew" do
    get revoew_url(@revoew)
    assert_response :success
  end

  test "should get edit" do
    get edit_revoew_url(@revoew)
    assert_response :success
  end

  test "should update revoew" do
    patch revoew_url(@revoew), params: { revoew: { comment: @revoew.comment, rating: @revoew.rating } }
    assert_redirected_to revoew_url(@revoew)
  end

  test "should destroy revoew" do
    assert_difference('Revoew.count', -1) do
      delete revoew_url(@revoew)
    end

    assert_redirected_to revoews_url
  end
end
