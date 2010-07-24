require 'test_helper'

class CogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cog" do
    assert_difference('Cog.count') do
      post :create, :cog => { }
    end

    assert_redirected_to cog_path(assigns(:cog))
  end

  test "should show cog" do
    get :show, :id => cogs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cogs(:one).to_param
    assert_response :success
  end

  test "should update cog" do
    put :update, :id => cogs(:one).to_param, :cog => { }
    assert_redirected_to cog_path(assigns(:cog))
  end

  test "should destroy cog" do
    assert_difference('Cog.count', -1) do
      delete :destroy, :id => cogs(:one).to_param
    end

    assert_redirected_to cogs_path
  end
end
