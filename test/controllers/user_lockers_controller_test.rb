require 'test_helper'

class UserLockersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_locker = user_lockers(:one)
  end

  test "should get index" do
    get user_lockers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_locker_url
    assert_response :success
  end

  test "should create user_locker" do
    assert_difference('UserLocker.count') do
      post user_lockers_url, params: { user_locker: { locker_id: @user_locker.locker_id, user_id: @user_locker.user_id } }
    end

    assert_redirected_to user_locker_url(UserLocker.last)
  end

  test "should show user_locker" do
    get user_locker_url(@user_locker)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_locker_url(@user_locker)
    assert_response :success
  end

  test "should update user_locker" do
    patch user_locker_url(@user_locker), params: { user_locker: { locker_id: @user_locker.locker_id, user_id: @user_locker.user_id } }
    assert_redirected_to user_locker_url(@user_locker)
  end

  test "should destroy user_locker" do
    assert_difference('UserLocker.count', -1) do
      delete user_locker_url(@user_locker)
    end

    assert_redirected_to user_lockers_url
  end
end
