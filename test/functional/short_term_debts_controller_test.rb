require 'test_helper'

class ShortTermDebtsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:short_term_debts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create short_term_debt" do
    assert_difference('ShortTermDebt.count') do
      post :create, :short_term_debt => { }
    end

    assert_redirected_to short_term_debt_path(assigns(:short_term_debt))
  end

  test "should show short_term_debt" do
    get :show, :id => short_term_debts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => short_term_debts(:one).to_param
    assert_response :success
  end

  test "should update short_term_debt" do
    put :update, :id => short_term_debts(:one).to_param, :short_term_debt => { }
    assert_redirected_to short_term_debt_path(assigns(:short_term_debt))
  end

  test "should destroy short_term_debt" do
    assert_difference('ShortTermDebt.count', -1) do
      delete :destroy, :id => short_term_debts(:one).to_param
    end

    assert_redirected_to short_term_debts_path
  end
end
