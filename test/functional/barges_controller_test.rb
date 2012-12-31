require 'test_helper'

class BargesControllerTest < ActionController::TestCase
  setup do
    @barge = barges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barge" do
    assert_difference('Barge.count') do
      post :create, barge: { description: @barge.description, name: @barge.name }
    end

    assert_redirected_to barge_path(assigns(:barge))
  end

  test "should show barge" do
    get :show, id: @barge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barge
    assert_response :success
  end

  test "should update barge" do
    put :update, id: @barge, barge: { description: @barge.description, name: @barge.name }
    assert_redirected_to barge_path(assigns(:barge))
  end

  test "should destroy barge" do
    assert_difference('Barge.count', -1) do
      delete :destroy, id: @barge
    end

    assert_redirected_to barges_path
  end
end
