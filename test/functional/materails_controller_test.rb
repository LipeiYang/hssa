require 'test_helper'

class MaterailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materail" do
    assert_difference('Materail.count') do
      post :create, :materail => { }
    end

    assert_redirected_to materail_path(assigns(:materail))
  end

  test "should show materail" do
    get :show, :id => materails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => materails(:one).to_param
    assert_response :success
  end

  test "should update materail" do
    put :update, :id => materails(:one).to_param, :materail => { }
    assert_redirected_to materail_path(assigns(:materail))
  end

  test "should destroy materail" do
    assert_difference('Materail.count', -1) do
      delete :destroy, :id => materails(:one).to_param
    end

    assert_redirected_to materails_path
  end
end
