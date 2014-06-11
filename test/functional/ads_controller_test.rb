require 'test_helper'

class AdsControllerTest < ActionController::TestCase
  setup do
    @ad = ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad" do
    assert_difference('Ad.count') do
      post :create, ad: { category: @ad.category, constitution_id: @ad.constitution_id, description: @ad.description, district_id: @ad.district_id, mandal_id: @ad.mandal_id, name: @ad.name, website: @ad.website }
    end

    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should show ad" do
    get :show, id: @ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad
    assert_response :success
  end

  test "should update ad" do
    put :update, id: @ad, ad: { category: @ad.category, constitution_id: @ad.constitution_id, description: @ad.description, district_id: @ad.district_id, mandal_id: @ad.mandal_id, name: @ad.name, website: @ad.website }
    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should destroy ad" do
    assert_difference('Ad.count', -1) do
      delete :destroy, id: @ad
    end

    assert_redirected_to ads_path
  end
end
