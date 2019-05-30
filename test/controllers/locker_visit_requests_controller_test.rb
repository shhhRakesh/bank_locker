require 'test_helper'

class LockerVisitRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locker_visit_request = locker_visit_requests(:one)
  end

  test "should get index" do
    get locker_visit_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_locker_visit_request_url
    assert_response :success
  end

  test "should create locker_visit_request" do
    assert_difference('LockerVisitRequest.count') do
      post locker_visit_requests_url, params: { locker_visit_request: { user_id: @locker_visit_request.user_id, visit_date_time: @locker_visit_request.visit_date_time, visit_status: @locker_visit_request.visit_status } }
    end

    assert_redirected_to locker_visit_request_url(LockerVisitRequest.last)
  end

  test "should show locker_visit_request" do
    get locker_visit_request_url(@locker_visit_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_locker_visit_request_url(@locker_visit_request)
    assert_response :success
  end

  test "should update locker_visit_request" do
    patch locker_visit_request_url(@locker_visit_request), params: { locker_visit_request: { user_id: @locker_visit_request.user_id, visit_date_time: @locker_visit_request.visit_date_time, visit_status: @locker_visit_request.visit_status } }
    assert_redirected_to locker_visit_request_url(@locker_visit_request)
  end

  test "should destroy locker_visit_request" do
    assert_difference('LockerVisitRequest.count', -1) do
      delete locker_visit_request_url(@locker_visit_request)
    end

    assert_redirected_to locker_visit_requests_url
  end
end
