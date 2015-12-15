require 'test_helper'

class RepairItemsControllerTest < ActionController::TestCase
  setup do
    @repair_item = repair_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repair_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repair_item" do
    assert_difference('RepairItem.count') do
      post :create, repair_item: { cause: @repair_item.cause, correction: @repair_item.correction, parts: @repair_item.parts }
    end

    assert_redirected_to repair_item_path(assigns(:repair_item))
  end

  test "should show repair_item" do
    get :show, id: @repair_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repair_item
    assert_response :success
  end

  test "should update repair_item" do
    patch :update, id: @repair_item, repair_item: { cause: @repair_item.cause, correction: @repair_item.correction, parts: @repair_item.parts }
    assert_redirected_to repair_item_path(assigns(:repair_item))
  end

  test "should destroy repair_item" do
    assert_difference('RepairItem.count', -1) do
      delete :destroy, id: @repair_item
    end

    assert_redirected_to repair_items_path
  end
end
