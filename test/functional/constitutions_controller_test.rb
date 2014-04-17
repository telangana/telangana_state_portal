require 'test_helper'

class ConstitutionsControllerTest < ActionController::TestCase
  setup do
    @constitution = constitutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constitutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constitution" do
    assert_difference('Constitution.count') do
      post :create, constitution: { description: @constitution.description, district_id: @constitution.district_id, name: @constitution.name, website: @constitution.website }
    end

    assert_redirected_to constitution_path(assigns(:constitution))
  end

  test "should show constitution" do
    get :show, id: @constitution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constitution
    assert_response :success
  end

  test "should update constitution" do
    put :update, id: @constitution, constitution: { description: @constitution.description, district_id: @constitution.district_id, name: @constitution.name, website: @constitution.website }
    assert_redirected_to constitution_path(assigns(:constitution))
  end

  test "should destroy constitution" do
    assert_difference('Constitution.count', -1) do
      delete :destroy, id: @constitution
    end

    assert_redirected_to constitutions_path
  end
end
