require 'test_helper'

class EventsByYearsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_by_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_by_year" do
    assert_difference('EventsByYear.count') do
      post :create, :events_by_year => { }
    end

    assert_redirected_to events_by_year_path(assigns(:events_by_year))
  end

  test "should show events_by_year" do
    get :show, :id => events_by_years(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_by_years(:one).to_param
    assert_response :success
  end

  test "should update events_by_year" do
    put :update, :id => events_by_years(:one).to_param, :events_by_year => { }
    assert_redirected_to events_by_year_path(assigns(:events_by_year))
  end

  test "should destroy events_by_year" do
    assert_difference('EventsByYear.count', -1) do
      delete :destroy, :id => events_by_years(:one).to_param
    end

    assert_redirected_to events_by_years_path
  end
end
