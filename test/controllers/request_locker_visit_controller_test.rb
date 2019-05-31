require 'test_helper'

class RequestLockerVisitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get request_locker_visit_index_url
    assert_response :success
  end

end
