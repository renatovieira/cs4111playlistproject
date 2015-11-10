require 'test_helper'

class SongPerformedBiesControllerTest < ActionController::TestCase
  setup do
    @song_performed_by = song_performed_bies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_performed_bies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_performed_by" do
    assert_difference('SongPerformedBy.count') do
      post :create, song_performed_by: { artist_id: @song_performed_by.artist_id, song_id: @song_performed_by.song_id }
    end

    assert_redirected_to song_performed_by_path(assigns(:song_performed_by))
  end

  test "should show song_performed_by" do
    get :show, id: @song_performed_by
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_performed_by
    assert_response :success
  end

  test "should update song_performed_by" do
    patch :update, id: @song_performed_by, song_performed_by: { artist_id: @song_performed_by.artist_id, song_id: @song_performed_by.song_id }
    assert_redirected_to song_performed_by_path(assigns(:song_performed_by))
  end

  test "should destroy song_performed_by" do
    assert_difference('SongPerformedBy.count', -1) do
      delete :destroy, id: @song_performed_by
    end

    assert_redirected_to song_performed_bies_path
  end
end
