require 'test_helper'

class OfficesControllerTest < ActionController::TestCase
  setup do
    @office = offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office" do
    assert_difference('Office.count') do
      post :create, office: { address: @office.address, description: @office.description, facebook_page: @office.facebook_page, name: @office.name, ph_no1: @office.ph_no1, ph_no2: @office.ph_no2, website: @office.website }
    end

    assert_redirected_to office_path(assigns(:office))
  end

  test "should show office" do
    get :show, id: @office
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office
    assert_response :success
  end

  test "should update office" do
    put :update, id: @office, office: { address: @office.address, description: @office.description, facebook_page: @office.facebook_page, name: @office.name, ph_no1: @office.ph_no1, ph_no2: @office.ph_no2, website: @office.website }
    assert_redirected_to office_path(assigns(:office))
  end

  test "should destroy office" do
    assert_difference('Office.count', -1) do
      delete :destroy, id: @office
    end

    assert_redirected_to offices_path
  end
end
