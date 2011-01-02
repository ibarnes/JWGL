require 'test_helper'

class DailiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dailies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily" do
    assert_difference('Daily.count') do
      post :create, :daily => { }
    end

    assert_redirected_to daily_path(assigns(:daily))
  end

  test "should show daily" do
    get :show, :id => dailies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dailies(:one).to_param
    assert_response :success
  end

  test "should update daily" do
    put :update, :id => dailies(:one).to_param, :daily => { }
    assert_redirected_to daily_path(assigns(:daily))
  end

  test "should destroy daily" do
    assert_difference('Daily.count', -1) do
      delete :destroy, :id => dailies(:one).to_param
    end

    assert_redirected_to dailies_path
  end
end
