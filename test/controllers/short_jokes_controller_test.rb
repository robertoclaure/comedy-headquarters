require 'test_helper'

class ShortJokesControllerTest < ActionController::TestCase
  setup do
    @short_joke = short_jokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:short_jokes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create short_joke" do
    assert_difference('ShortJoke.count') do
      post :create, short_joke: { contents: @short_joke.contents, user_id: @short_joke.user_id }
    end

    assert_redirected_to short_joke_path(assigns(:short_joke))
  end

  test "should show short_joke" do
    get :show, id: @short_joke
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @short_joke
    assert_response :success
  end

  test "should update short_joke" do
    patch :update, id: @short_joke, short_joke: { contents: @short_joke.contents, user_id: @short_joke.user_id }
    assert_redirected_to short_joke_path(assigns(:short_joke))
  end

  test "should destroy short_joke" do
    assert_difference('ShortJoke.count', -1) do
      delete :destroy, id: @short_joke
    end

    assert_redirected_to short_jokes_path
  end
end
