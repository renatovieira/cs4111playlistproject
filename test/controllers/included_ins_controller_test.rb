require 'test_helper'

class IncludedInsControllerTest < ActionController::TestCase
  setup do
    @included_in = included_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:included_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create included_in" do
    assert_difference('IncludedIn.count') do
      post :create, included_in: { album_id: @included_in.album_id, song_id: @included_in.song_id }
    end

    assert_redirected_to included_in_path(assigns(:included_in))
  end

  test "should show included_in" do
    get :show, id: @included_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @included_in
    assert_response :success
  end

  test "should update included_in" do
    patch :update, id: @included_in, included_in: { album_id: @included_in.album_id, song_id: @included_in.song_id }
    assert_redirected_to included_in_path(assigns(:included_in))
  end

  test "should destroy included_in" do
    assert_difference('IncludedIn.count', -1) do
      delete :destroy, id: @included_in
    end

    assert_redirected_to included_ins_path
  end
end
