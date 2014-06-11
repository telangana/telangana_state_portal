require 'test_helper'

class PrivateSectorsControllerTest < ActionController::TestCase
  setup do
    @private_sector = private_sectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_sectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_sector" do
    assert_difference('PrivateSector.count') do
      post :create, private_sector: { description: @private_sector.description, district_id: @private_sector.district_id, facebook_page: @private_sector.facebook_page, name: @private_sector.name, website: @private_sector.website }
    end

    assert_redirected_to private_sector_path(assigns(:private_sector))
  end

  test "should show private_sector" do
    get :show, id: @private_sector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @private_sector
    assert_response :success
  end

  test "should update private_sector" do
    put :update, id: @private_sector, private_sector: { description: @private_sector.description, district_id: @private_sector.district_id, facebook_page: @private_sector.facebook_page, name: @private_sector.name, website: @private_sector.website }
    assert_redirected_to private_sector_path(assigns(:private_sector))
  end

  test "should destroy private_sector" do
    assert_difference('PrivateSector.count', -1) do
      delete :destroy, id: @private_sector
    end

    assert_redirected_to private_sectors_path
  end
end
