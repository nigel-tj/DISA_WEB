require 'test_helper'

class DiagnosisFacilitiesControllerTest < ActionController::TestCase
  setup do
    @diagnosis_facility = diagnosis_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnosis_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnosis_facility" do
    assert_difference('DiagnosisFacility.count') do
      post :create, diagnosis_facility: { diagnosis_facility_id: @diagnosis_facility.diagnosis_facility_id, location_id: @diagnosis_facility.location_id, name: @diagnosis_facility.name }
    end

    assert_redirected_to diagnosis_facility_path(assigns(:diagnosis_facility))
  end

  test "should show diagnosis_facility" do
    get :show, id: @diagnosis_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnosis_facility
    assert_response :success
  end

  test "should update diagnosis_facility" do
    patch :update, id: @diagnosis_facility, diagnosis_facility: { diagnosis_facility_id: @diagnosis_facility.diagnosis_facility_id, location_id: @diagnosis_facility.location_id, name: @diagnosis_facility.name }
    assert_redirected_to diagnosis_facility_path(assigns(:diagnosis_facility))
  end

  test "should destroy diagnosis_facility" do
    assert_difference('DiagnosisFacility.count', -1) do
      delete :destroy, id: @diagnosis_facility
    end

    assert_redirected_to diagnosis_facilities_path
  end
end
