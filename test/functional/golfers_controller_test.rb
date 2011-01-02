require 'test_helper'

class GolfersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golfer" do
    assert_difference('Golfer.count') do
      post :create, :golfer => { }
    end

    assert_redirected_to golfer_path(assigns(:golfer))
  end

  test "should show golfer" do
    get :show, :id => golfers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => golfers(:one).to_param
    assert_response :success
  end

  test "should update golfer" do
    put :update, :id => golfers(:one).to_param, :golfer => { }
    assert_redirected_to golfer_path(assigns(:golfer))
  end

  test "should destroy golfer" do
    assert_difference('Golfer.count', -1) do
      delete :destroy, :id => golfers(:one).to_param
    end

    assert_redirected_to golfers_path
  end
end
