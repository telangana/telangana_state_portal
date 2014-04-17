require 'test_helper'

class OfficialProfilesControllerTest < ActionController::TestCase
  setup do
    @official_profile = official_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:official_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create official_profile" do
    assert_difference('OfficialProfile.count') do
      post :create, official_profile: { description: @official_profile.description, job_position_id: @official_profile.job_position_id, name: @official_profile.name }
    end

    assert_redirected_to official_profile_path(assigns(:official_profile))
  end

  test "should show official_profile" do
    get :show, id: @official_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @official_profile
    assert_response :success
  end

  test "should update official_profile" do
    put :update, id: @official_profile, official_profile: { description: @official_profile.description, job_position_id: @official_profile.job_position_id, name: @official_profile.name }
    assert_redirected_to official_profile_path(assigns(:official_profile))
  end

  test "should destroy official_profile" do
    assert_difference('OfficialProfile.count', -1) do
      delete :destroy, id: @official_profile
    end

    assert_redirected_to official_profiles_path
  end
end
