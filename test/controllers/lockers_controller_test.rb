require 'test_helper'

class LockersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locker = lockers(:one)
  end

  test "should get index" do
    get lockers_url
    assert_response :success
  end

  test "should get new" do
    get new_locker_url
    assert_response :success
  end

  test "should create locker" do
    assert_difference('Locker.count') do
      post lockers_url, params: { locker: { bank_branch_id: @locker.bank_branch_id, locker_code: @locker.locker_code, locker_name: @locker.locker_name, locker_type_id: @locker.locker_type_id } }
    end

    assert_redirected_to locker_url(Locker.last)
  end

  test "should show locker" do
    get locker_url(@locker)
    assert_response :success
  end

  test "should get edit" do
    get edit_locker_url(@locker)
    assert_response :success
  end

  test "should update locker" do
    patch locker_url(@locker), params: { locker: { bank_branch_id: @locker.bank_branch_id, locker_code: @locker.locker_code, locker_name: @locker.locker_name, locker_type_id: @locker.locker_type_id } }
    assert_redirected_to locker_url(@locker)
  end

  test "should destroy locker" do
    assert_difference('Locker.count', -1) do
      delete locker_url(@locker)
    end

    assert_redirected_to lockers_url
  end
end
