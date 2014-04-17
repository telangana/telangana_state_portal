require 'test_helper'

class StateCadresControllerTest < ActionController::TestCase
  setup do
    @state_cadre = state_cadres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_cadres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_cadre" do
    assert_difference('StateCadre.count') do
      post :create, state_cadre: { candiate_name: @state_cadre.candiate_name, description: @state_cadre.description, name: @state_cadre.name, ph_no1: @state_cadre.ph_no1, ph_no2: @state_cadre.ph_no2 }
    end

    assert_redirected_to state_cadre_path(assigns(:state_cadre))
  end

  test "should show state_cadre" do
    get :show, id: @state_cadre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_cadre
    assert_response :success
  end

  test "should update state_cadre" do
    put :update, id: @state_cadre, state_cadre: { candiate_name: @state_cadre.candiate_name, description: @state_cadre.description, name: @state_cadre.name, ph_no1: @state_cadre.ph_no1, ph_no2: @state_cadre.ph_no2 }
    assert_redirected_to state_cadre_path(assigns(:state_cadre))
  end

  test "should destroy state_cadre" do
    assert_difference('StateCadre.count', -1) do
      delete :destroy, id: @state_cadre
    end

    assert_redirected_to state_cadres_path
  end
end
