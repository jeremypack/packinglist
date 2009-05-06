require 'test_helper'

class ReasonsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reason" do
    assert_difference('Reason.count') do
      post :create, :reason => { }
    end

    assert_redirected_to reason_path(assigns(:reason))
  end

  test "should show reason" do
    get :show, :id => reasons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => reasons(:one).to_param
    assert_response :success
  end

  test "should update reason" do
    put :update, :id => reasons(:one).to_param, :reason => { }
    assert_redirected_to reason_path(assigns(:reason))
  end

  test "should destroy reason" do
    assert_difference('Reason.count', -1) do
      delete :destroy, :id => reasons(:one).to_param
    end

    assert_redirected_to reasons_path
  end
end
