require 'test_helper'

class RingerScoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ringer_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ringer_score" do
    assert_difference('RingerScore.count') do
      post :create, :ringer_score => { }
    end

    assert_redirected_to ringer_score_path(assigns(:ringer_score))
  end

  test "should show ringer_score" do
    get :show, :id => ringer_scores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ringer_scores(:one).to_param
    assert_response :success
  end

  test "should update ringer_score" do
    put :update, :id => ringer_scores(:one).to_param, :ringer_score => { }
    assert_redirected_to ringer_score_path(assigns(:ringer_score))
  end

  test "should destroy ringer_score" do
    assert_difference('RingerScore.count', -1) do
      delete :destroy, :id => ringer_scores(:one).to_param
    end

    assert_redirected_to ringer_scores_path
  end
end
