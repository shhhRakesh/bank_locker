require 'test_helper'

class LockerApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get locker_application_index_url
    assert_response :success
  end

  test "should get new" do
    get locker_application_new_url
    assert_response :success
  end

  test "should get create" do
    get locker_application_create_url
    assert_response :success
  end

  test "should get destroy" do
    get locker_application_destroy_url
    assert_response :success
  end

end
