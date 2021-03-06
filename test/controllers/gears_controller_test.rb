require 'test_helper'

class GearsControllerTest < ActionController::TestCase
  setup do
    @gear = gears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gear" do
    assert_difference('Gear.count') do
      post :create, gear: { account_id: @gear.account_id, alert: @gear.alert, brand: @gear.brand, color: @gear.color, date_buy: @gear.date_buy, details: @gear.details, item_id: @gear.item_id, model: @gear.model, name: @gear.name, serial: @gear.serial, type: @gear.type }
    end

    assert_redirected_to gear_path(assigns(:gear))
  end

  test "should show gear" do
    get :show, id: @gear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gear
    assert_response :success
  end

  test "should update gear" do
    patch :update, id: @gear, gear: { account_id: @gear.account_id, alert: @gear.alert, brand: @gear.brand, color: @gear.color, date_buy: @gear.date_buy, details: @gear.details, item_id: @gear.item_id, model: @gear.model, name: @gear.name, serial: @gear.serial, type: @gear.type }
    assert_redirected_to gear_path(assigns(:gear))
  end

  test "should destroy gear" do
    assert_difference('Gear.count', -1) do
      delete :destroy, id: @gear
    end

    assert_redirected_to gears_path
  end
end
