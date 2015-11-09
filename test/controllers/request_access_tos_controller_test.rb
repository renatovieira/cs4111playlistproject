require 'test_helper'

class RequestAccessTosControllerTest < ActionController::TestCase
  setup do
    @request_access_to = request_access_tos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_access_tos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_access_to" do
    assert_difference('RequestAccessTo.count') do
      post :create, request_access_to: { playlist_id: @request_access_to.playlist_id, user_id: @request_access_to.user_id }
    end

    assert_redirected_to request_access_to_path(assigns(:request_access_to))
  end

  test "should show request_access_to" do
    get :show, id: @request_access_to
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_access_to
    assert_response :success
  end

  test "should update request_access_to" do
    patch :update, id: @request_access_to, request_access_to: { playlist_id: @request_access_to.playlist_id, user_id: @request_access_to.user_id }
    assert_redirected_to request_access_to_path(assigns(:request_access_to))
  end

  test "should destroy request_access_to" do
    assert_difference('RequestAccessTo.count', -1) do
      delete :destroy, id: @request_access_to
    end

    assert_redirected_to request_access_tos_path
  end
end
