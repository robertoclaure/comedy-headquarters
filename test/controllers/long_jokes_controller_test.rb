require 'test_helper'

class LongJokesControllerTest < ActionController::TestCase
  setup do
    @long_joke = long_jokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:long_jokes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create long_joke" do
    assert_difference('LongJoke.count') do
      post :create, long_joke: { contents: @long_joke.contents, user_id: @long_joke.user_id }
    end

    assert_redirected_to long_joke_path(assigns(:long_joke))
  end

  test "should show long_joke" do
    get :show, id: @long_joke
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @long_joke
    assert_response :success
  end

  test "should update long_joke" do
    patch :update, id: @long_joke, long_joke: { contents: @long_joke.contents, user_id: @long_joke.user_id }
    assert_redirected_to long_joke_path(assigns(:long_joke))
  end

  test "should destroy long_joke" do
    assert_difference('LongJoke.count', -1) do
      delete :destroy, id: @long_joke
    end

    assert_redirected_to long_jokes_path
  end
end
