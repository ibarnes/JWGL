require 'test_helper'

class YearliesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yearlies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yearly" do
    assert_difference('Yearly.count') do
      post :create, :yearly => { }
    end

    assert_redirected_to yearly_path(assigns(:yearly))
  end

  test "should show yearly" do
    get :show, :id => yearlies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => yearlies(:one).to_param
    assert_response :success
  end

  test "should update yearly" do
    put :update, :id => yearlies(:one).to_param, :yearly => { }
    assert_redirected_to yearly_path(assigns(:yearly))
  end

  test "should destroy yearly" do
    assert_difference('Yearly.count', -1) do
      delete :destroy, :id => yearlies(:one).to_param
    end

    assert_redirected_to yearlies_path
  end
end
