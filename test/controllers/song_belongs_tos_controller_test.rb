require 'test_helper'

class SongBelongsTosControllerTest < ActionController::TestCase
  setup do
    @song_belongs_to = song_belongs_tos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_belongs_tos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_belongs_to" do
    assert_difference('SongBelongsTo.count') do
      post :create, song_belongs_to: { genre_id: @song_belongs_to.genre_id, song_id: @song_belongs_to.song_id }
    end

    assert_redirected_to song_belongs_to_path(assigns(:song_belongs_to))
  end

  test "should show song_belongs_to" do
    get :show, id: @song_belongs_to
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_belongs_to
    assert_response :success
  end

  test "should update song_belongs_to" do
    patch :update, id: @song_belongs_to, song_belongs_to: { genre_id: @song_belongs_to.genre_id, song_id: @song_belongs_to.song_id }
    assert_redirected_to song_belongs_to_path(assigns(:song_belongs_to))
  end

  test "should destroy song_belongs_to" do
    assert_difference('SongBelongsTo.count', -1) do
      delete :destroy, id: @song_belongs_to
    end

    assert_redirected_to song_belongs_tos_path
  end
end
