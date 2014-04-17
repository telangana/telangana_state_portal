require 'test_helper'

class MinistersControllerTest < ActionController::TestCase
  setup do
    @minister = ministers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minister" do
    assert_difference('Minister.count') do
      post :create, minister: { constitution_id: @minister.constitution_id, description: @minister.description, facebook_page: @minister.facebook_page, name: @minister.name, website: @minister.website }
    end

    assert_redirected_to minister_path(assigns(:minister))
  end

  test "should show minister" do
    get :show, id: @minister
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minister
    assert_response :success
  end

  test "should update minister" do
    put :update, id: @minister, minister: { constitution_id: @minister.constitution_id, description: @minister.description, facebook_page: @minister.facebook_page, name: @minister.name, website: @minister.website }
    assert_redirected_to minister_path(assigns(:minister))
  end

  test "should destroy minister" do
    assert_difference('Minister.count', -1) do
      delete :destroy, id: @minister
    end

    assert_redirected_to ministers_path
  end
end
