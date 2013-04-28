require 'test_helper'

class Admin::SessionsControllerTest < ActionController::TestCase
  setup do
    @admin_session = admin_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_session" do
    assert_difference('Admin::Session.count') do
      post :create, admin_session: {  }
    end

    assert_redirected_to admin_session_path(assigns(:admin_session))
  end

  test "should show admin_session" do
    get :show, id: @admin_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_session
    assert_response :success
  end

  test "should update admin_session" do
    put :update, id: @admin_session, admin_session: {  }
    assert_redirected_to admin_session_path(assigns(:admin_session))
  end

  test "should destroy admin_session" do
    assert_difference('Admin::Session.count', -1) do
      delete :destroy, id: @admin_session
    end

    assert_redirected_to admin_sessions_path
  end
end
