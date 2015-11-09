require 'test_helper'

class CollaboratesInsControllerTest < ActionController::TestCase
  setup do
    @collaborates_in = collaborates_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collaborates_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collaborates_in" do
    assert_difference('CollaboratesIn.count') do
      post :create, collaborates_in: { playlist_id: @collaborates_in.playlist_id, user_id: @collaborates_in.user_id }
    end

    assert_redirected_to collaborates_in_path(assigns(:collaborates_in))
  end

  test "should show collaborates_in" do
    get :show, id: @collaborates_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collaborates_in
    assert_response :success
  end

  test "should update collaborates_in" do
    patch :update, id: @collaborates_in, collaborates_in: { playlist_id: @collaborates_in.playlist_id, user_id: @collaborates_in.user_id }
    assert_redirected_to collaborates_in_path(assigns(:collaborates_in))
  end

  test "should destroy collaborates_in" do
    assert_difference('CollaboratesIn.count', -1) do
      delete :destroy, id: @collaborates_in
    end

    assert_redirected_to collaborates_ins_path
  end
end
