require 'test_helper'

class PayableItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payable_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payable_item" do
    assert_difference('PayableItem.count') do
      post :create, :payable_item => { }
    end

    assert_redirected_to payable_item_path(assigns(:payable_item))
  end

  test "should show payable_item" do
    get :show, :id => payable_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => payable_items(:one).to_param
    assert_response :success
  end

  test "should update payable_item" do
    put :update, :id => payable_items(:one).to_param, :payable_item => { }
    assert_redirected_to payable_item_path(assigns(:payable_item))
  end

  test "should destroy payable_item" do
    assert_difference('PayableItem.count', -1) do
      delete :destroy, :id => payable_items(:one).to_param
    end

    assert_redirected_to payable_items_path
  end
end
