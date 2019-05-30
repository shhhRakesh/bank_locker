require 'test_helper'

class LockerRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locker_request = locker_requests(:one)
  end

  test "should get index" do
    get locker_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_locker_request_url
    assert_response :success
  end

  test "should create locker_request" do
    assert_difference('LockerRequest.count') do
      post locker_requests_url, params: { locker_request: { request_date: @locker_request.request_date, status: @locker_request.status, user_id: @locker_request.user_id } }
    end

    assert_redirected_to locker_request_url(LockerRequest.last)
  end

  test "should show locker_request" do
    get locker_request_url(@locker_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_locker_request_url(@locker_request)
    assert_response :success
  end

  test "should update locker_request" do
    patch locker_request_url(@locker_request), params: { locker_request: { request_date: @locker_request.request_date, status: @locker_request.status, user_id: @locker_request.user_id } }
    assert_redirected_to locker_request_url(@locker_request)
  end

  test "should destroy locker_request" do
    assert_difference('LockerRequest.count', -1) do
      delete locker_request_url(@locker_request)
    end

    assert_redirected_to locker_requests_url
  end
end
