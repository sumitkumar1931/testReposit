require 'test_helper'

class SumitsControllerTest < ActionController::TestCase
  setup do
    @sumit = sumits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sumits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sumit" do
    assert_difference('Sumit.count') do
      post :create, sumit: { content: @sumit.content, name: @sumit.name, published_on: @sumit.published_on, tags: @sumit.tags }
    end

    assert_redirected_to sumit_path(assigns(:sumit))
  end

  test "should show sumit" do
    get :show, id: @sumit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sumit
    assert_response :success
  end

  test "should update sumit" do
    patch :update, id: @sumit, sumit: { content: @sumit.content, name: @sumit.name, published_on: @sumit.published_on, tags: @sumit.tags }
    assert_redirected_to sumit_path(assigns(:sumit))
  end

  test "should destroy sumit" do
    assert_difference('Sumit.count', -1) do
      delete :destroy, id: @sumit
    end

    assert_redirected_to sumits_path
  end
end
