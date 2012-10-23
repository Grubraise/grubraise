require 'test_helper'

class PtosControllerTest < ActionController::TestCase
  setup do
    @pto = ptos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pto" do
    assert_difference('Pto.count') do
      post :create, pto: { email: @pto.email, name: @pto.name, phone: @pto.phone, school: @pto.school }
    end

    assert_redirected_to pto_path(assigns(:pto))
  end

  test "should show pto" do
    get :show, id: @pto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pto
    assert_response :success
  end

  test "should update pto" do
    put :update, id: @pto, pto: { email: @pto.email, name: @pto.name, phone: @pto.phone, school: @pto.school }
    assert_redirected_to pto_path(assigns(:pto))
  end

  test "should destroy pto" do
    assert_difference('Pto.count', -1) do
      delete :destroy, id: @pto
    end

    assert_redirected_to ptos_path
  end
end
