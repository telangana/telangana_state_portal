require 'test_helper'

class OnlineServicesControllerTest < ActionController::TestCase
  setup do
    @online_service = online_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_service" do
    assert_difference('OnlineService.count') do
      post :create, online_service: { category: @online_service.category, description: @online_service.description, name: @online_service.name, website: @online_service.website }
    end

    assert_redirected_to online_service_path(assigns(:online_service))
  end

  test "should show online_service" do
    get :show, id: @online_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @online_service
    assert_response :success
  end

  test "should update online_service" do
    put :update, id: @online_service, online_service: { category: @online_service.category, description: @online_service.description, name: @online_service.name, website: @online_service.website }
    assert_redirected_to online_service_path(assigns(:online_service))
  end

  test "should destroy online_service" do
    assert_difference('OnlineService.count', -1) do
      delete :destroy, id: @online_service
    end

    assert_redirected_to online_services_path
  end
end
