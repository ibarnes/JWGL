require 'test_helper'

class ExecutivePositionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:executive_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create executive_position" do
    assert_difference('ExecutivePosition.count') do
      post :create, :executive_position => { }
    end

    assert_redirected_to executive_position_path(assigns(:executive_position))
  end

  test "should show executive_position" do
    get :show, :id => executive_positions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => executive_positions(:one).to_param
    assert_response :success
  end

  test "should update executive_position" do
    put :update, :id => executive_positions(:one).to_param, :executive_position => { }
    assert_redirected_to executive_position_path(assigns(:executive_position))
  end

  test "should destroy executive_position" do
    assert_difference('ExecutivePosition.count', -1) do
      delete :destroy, :id => executive_positions(:one).to_param
    end

    assert_redirected_to executive_positions_path
  end
end
