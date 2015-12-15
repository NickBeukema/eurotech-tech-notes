require 'test_helper'

class RepairDetailsControllerTest < ActionController::TestCase
  setup do
    @repair_detail = repair_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repair_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repair_detail" do
    assert_difference('RepairDetail.count') do
      post :create, repair_detail: { maintenance: @repair_detail.maintenance, recommendations: @repair_detail.recommendations, repair_order: @repair_detail.repair_order }
    end

    assert_redirected_to repair_detail_path(assigns(:repair_detail))
  end

  test "should show repair_detail" do
    get :show, id: @repair_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repair_detail
    assert_response :success
  end

  test "should update repair_detail" do
    patch :update, id: @repair_detail, repair_detail: { maintenance: @repair_detail.maintenance, recommendations: @repair_detail.recommendations, repair_order: @repair_detail.repair_order }
    assert_redirected_to repair_detail_path(assigns(:repair_detail))
  end

  test "should destroy repair_detail" do
    assert_difference('RepairDetail.count', -1) do
      delete :destroy, id: @repair_detail
    end

    assert_redirected_to repair_details_path
  end
end
