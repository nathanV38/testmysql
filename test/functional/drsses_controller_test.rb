require 'test_helper'

class DrssesControllerTest < ActionController::TestCase
  setup do
    @drss = drsses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drsses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drss" do
    assert_difference('Drss.count') do
      post :create, drss: { brand: @drss.brand, comment: @drss.comment, price: @drss.price, size: @drss.size }
    end

    assert_redirected_to drss_path(assigns(:drss))
  end

  test "should show drss" do
    get :show, id: @drss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drss
    assert_response :success
  end

  test "should update drss" do
    put :update, id: @drss, drss: { brand: @drss.brand, comment: @drss.comment, price: @drss.price, size: @drss.size }
    assert_redirected_to drss_path(assigns(:drss))
  end

  test "should destroy drss" do
    assert_difference('Drss.count', -1) do
      delete :destroy, id: @drss
    end

    assert_redirected_to drsses_path
  end
end
