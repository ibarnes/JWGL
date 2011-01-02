require 'test_helper'

class ExecutiveCommitteesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:executive_committees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create executive_committee" do
    assert_difference('ExecutiveCommittee.count') do
      post :create, :executive_committee => { }
    end

    assert_redirected_to executive_committee_path(assigns(:executive_committee))
  end

  test "should show executive_committee" do
    get :show, :id => executive_committees(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => executive_committees(:one).to_param
    assert_response :success
  end

  test "should update executive_committee" do
    put :update, :id => executive_committees(:one).to_param, :executive_committee => { }
    assert_redirected_to executive_committee_path(assigns(:executive_committee))
  end

  test "should destroy executive_committee" do
    assert_difference('ExecutiveCommittee.count', -1) do
      delete :destroy, :id => executive_committees(:one).to_param
    end

    assert_redirected_to executive_committees_path
  end
end
