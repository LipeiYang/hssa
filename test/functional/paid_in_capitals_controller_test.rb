require 'test_helper'

class PaidInCapitalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paid_in_capitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paid_in_capital" do
    assert_difference('PaidInCapital.count') do
      post :create, :paid_in_capital => { }
    end

    assert_redirected_to paid_in_capital_path(assigns(:paid_in_capital))
  end

  test "should show paid_in_capital" do
    get :show, :id => paid_in_capitals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => paid_in_capitals(:one).to_param
    assert_response :success
  end

  test "should update paid_in_capital" do
    put :update, :id => paid_in_capitals(:one).to_param, :paid_in_capital => { }
    assert_redirected_to paid_in_capital_path(assigns(:paid_in_capital))
  end

  test "should destroy paid_in_capital" do
    assert_difference('PaidInCapital.count', -1) do
      delete :destroy, :id => paid_in_capitals(:one).to_param
    end

    assert_redirected_to paid_in_capitals_path
  end
end
