require 'test_helper'

class MandalsControllerTest < ActionController::TestCase
  setup do
    @mandal = mandals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mandals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mandal" do
    assert_difference('Mandal.count') do
      post :create, mandal: { description: @mandal.description, district_id: @mandal.district_id, facebook_page: @mandal.facebook_page, name: @mandal.name, website: @mandal.website }
    end

    assert_redirected_to mandal_path(assigns(:mandal))
  end

  test "should show mandal" do
    get :show, id: @mandal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mandal
    assert_response :success
  end

  test "should update mandal" do
    put :update, id: @mandal, mandal: { description: @mandal.description, district_id: @mandal.district_id, facebook_page: @mandal.facebook_page, name: @mandal.name, website: @mandal.website }
    assert_redirected_to mandal_path(assigns(:mandal))
  end

  test "should destroy mandal" do
    assert_difference('Mandal.count', -1) do
      delete :destroy, id: @mandal
    end

    assert_redirected_to mandals_path
  end
end
