require 'test_helper'

class ArtistBelongTosControllerTest < ActionController::TestCase
  setup do
    @artist_belong_to = artist_belong_tos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_belong_tos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_belong_to" do
    assert_difference('ArtistBelongTo.count') do
      post :create, artist_belong_to: { artist_id: @artist_belong_to.artist_id, genre_id: @artist_belong_to.genre_id }
    end

    assert_redirected_to artist_belong_to_path(assigns(:artist_belong_to))
  end

  test "should show artist_belong_to" do
    get :show, id: @artist_belong_to
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_belong_to
    assert_response :success
  end

  test "should update artist_belong_to" do
    patch :update, id: @artist_belong_to, artist_belong_to: { artist_id: @artist_belong_to.artist_id, genre_id: @artist_belong_to.genre_id }
    assert_redirected_to artist_belong_to_path(assigns(:artist_belong_to))
  end

  test "should destroy artist_belong_to" do
    assert_difference('ArtistBelongTo.count', -1) do
      delete :destroy, id: @artist_belong_to
    end

    assert_redirected_to artist_belong_tos_path
  end
end
