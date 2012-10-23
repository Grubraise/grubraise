require 'test_helper'

class RestuarantsControllerTest < ActionController::TestCase
  setup do
    @restuarant = restuarants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restuarants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restuarant" do
    assert_difference('Restuarant.count') do
      post :create, restuarant: { email: @restuarant.email, message: @restuarant.message, owner_name: @restuarant.owner_name, phone_number: @restuarant.phone_number, reference: @restuarant.reference, restuarant_name: @restuarant.restuarant_name, website: @restuarant.website }
    end

    assert_redirected_to restuarant_path(assigns(:restuarant))
  end

  test "should show restuarant" do
    get :show, id: @restuarant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restuarant
    assert_response :success
  end

  test "should update restuarant" do
    put :update, id: @restuarant, restuarant: { email: @restuarant.email, message: @restuarant.message, owner_name: @restuarant.owner_name, phone_number: @restuarant.phone_number, reference: @restuarant.reference, restuarant_name: @restuarant.restuarant_name, website: @restuarant.website }
    assert_redirected_to restuarant_path(assigns(:restuarant))
  end

  test "should destroy restuarant" do
    assert_difference('Restuarant.count', -1) do
      delete :destroy, id: @restuarant
    end

    assert_redirected_to restuarants_path
  end
end
