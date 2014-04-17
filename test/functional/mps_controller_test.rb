require 'test_helper'

class MpsControllerTest < ActionController::TestCase
  setup do
    @mp = mps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mp" do
    assert_difference('Mp.count') do
      post :create, mp: { description: @mp.description, district_id: @mp.district_id, facebook_page: @mp.facebook_page, name: @mp.name, personal_info: @mp.personal_info, website: @mp.website }
    end

    assert_redirected_to mp_path(assigns(:mp))
  end

  test "should show mp" do
    get :show, id: @mp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mp
    assert_response :success
  end

  test "should update mp" do
    put :update, id: @mp, mp: { description: @mp.description, district_id: @mp.district_id, facebook_page: @mp.facebook_page, name: @mp.name, personal_info: @mp.personal_info, website: @mp.website }
    assert_redirected_to mp_path(assigns(:mp))
  end

  test "should destroy mp" do
    assert_difference('Mp.count', -1) do
      delete :destroy, id: @mp
    end

    assert_redirected_to mps_path
  end
end
