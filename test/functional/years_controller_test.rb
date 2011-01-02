require 'test_helper'

class YearsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create year" do
    assert_difference('Year.count') do
      post :create, :year => { }
    end

    assert_redirected_to year_path(assigns(:year))
  end

  test "should show year" do
    get :show, :id => years(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => years(:one).to_param
    assert_response :success
  end

  test "should update year" do
    put :update, :id => years(:one).to_param, :year => { }
    assert_redirected_to year_path(assigns(:year))
  end

  test "should destroy year" do
    assert_difference('Year.count', -1) do
      delete :destroy, :id => years(:one).to_param
    end

    assert_redirected_to years_path
  end
end
