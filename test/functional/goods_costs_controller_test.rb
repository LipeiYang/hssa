require 'test_helper'

class GoodsCostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goods_costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goods_cost" do
    assert_difference('GoodsCost.count') do
      post :create, :goods_cost => { }
    end

    assert_redirected_to goods_cost_path(assigns(:goods_cost))
  end

  test "should show goods_cost" do
    get :show, :id => goods_costs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => goods_costs(:one).to_param
    assert_response :success
  end

  test "should update goods_cost" do
    put :update, :id => goods_costs(:one).to_param, :goods_cost => { }
    assert_redirected_to goods_cost_path(assigns(:goods_cost))
  end

  test "should destroy goods_cost" do
    assert_difference('GoodsCost.count', -1) do
      delete :destroy, :id => goods_costs(:one).to_param
    end

    assert_redirected_to goods_costs_path
  end
end
