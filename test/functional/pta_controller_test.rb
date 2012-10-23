require 'test_helper'

class PtaControllerTest < ActionController::TestCase
  setup do
    @ptum = pta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptum" do
    assert_difference('Ptum.count') do
      post :create, ptum: { email: @ptum.email, name: @ptum.name, phone: @ptum.phone, school: @ptum.school }
    end

    assert_redirected_to ptum_path(assigns(:ptum))
  end

  test "should show ptum" do
    get :show, id: @ptum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ptum
    assert_response :success
  end

  test "should update ptum" do
    put :update, id: @ptum, ptum: { email: @ptum.email, name: @ptum.name, phone: @ptum.phone, school: @ptum.school }
    assert_redirected_to ptum_path(assigns(:ptum))
  end

  test "should destroy ptum" do
    assert_difference('Ptum.count', -1) do
      delete :destroy, id: @ptum
    end

    assert_redirected_to pta_path
  end
end
