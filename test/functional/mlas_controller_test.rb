require 'test_helper'

class MlasControllerTest < ActionController::TestCase
  setup do
    @mla = mlas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mlas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mla" do
    assert_difference('Mla.count') do
      post :create, mla: { constitution_id: @mla.constitution_id, description: @mla.description, facebook_page: @mla.facebook_page, name: @mla.name, personal_info: @mla.personal_info, website: @mla.website }
    end

    assert_redirected_to mla_path(assigns(:mla))
  end

  test "should show mla" do
    get :show, id: @mla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mla
    assert_response :success
  end

  test "should update mla" do
    put :update, id: @mla, mla: { constitution_id: @mla.constitution_id, description: @mla.description, facebook_page: @mla.facebook_page, name: @mla.name, personal_info: @mla.personal_info, website: @mla.website }
    assert_redirected_to mla_path(assigns(:mla))
  end

  test "should destroy mla" do
    assert_difference('Mla.count', -1) do
      delete :destroy, id: @mla
    end

    assert_redirected_to mlas_path
  end
end
