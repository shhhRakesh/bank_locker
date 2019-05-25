require 'test_helper'

class LockerTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locker_type = locker_types(:one)
  end

  test "should get index" do
    get locker_types_url
    assert_response :success
  end

  test "should get new" do
    get new_locker_type_url
    assert_response :success
  end

  test "should create locker_type" do
    assert_difference('LockerType.count') do
      post locker_types_url, params: { locker_type: { extra_visit_charges: @locker_type.extra_visit_charges, locker_type: @locker_type.locker_type, number_of_free_visits: @locker_type.number_of_free_visits, yearly_rent: @locker_type.yearly_rent } }
    end

    assert_redirected_to locker_type_url(LockerType.last)
  end

  test "should show locker_type" do
    get locker_type_url(@locker_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_locker_type_url(@locker_type)
    assert_response :success
  end

  test "should update locker_type" do
    patch locker_type_url(@locker_type), params: { locker_type: { extra_visit_charges: @locker_type.extra_visit_charges, locker_type: @locker_type.locker_type, number_of_free_visits: @locker_type.number_of_free_visits, yearly_rent: @locker_type.yearly_rent } }
    assert_redirected_to locker_type_url(@locker_type)
  end

  test "should destroy locker_type" do
    assert_difference('LockerType.count', -1) do
      delete locker_type_url(@locker_type)
    end

    assert_redirected_to locker_types_url
  end
end
