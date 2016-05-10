require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: { alert: @equipment.alert, brand: @equipment.brand, color: @equipment.color, date_buy: @equipment.date_buy, date_cad: @equipment.date_cad, details: @equipment.details, gear_id: @equipment.gear_id, item_id: @equipment.item_id, model: @equipment.model, name: @equipment.name, serial: @equipment.serial, type: @equipment.type }
    end

    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    patch :update, id: @equipment, equipment: { alert: @equipment.alert, brand: @equipment.brand, color: @equipment.color, date_buy: @equipment.date_buy, date_cad: @equipment.date_cad, details: @equipment.details, gear_id: @equipment.gear_id, item_id: @equipment.item_id, model: @equipment.model, name: @equipment.name, serial: @equipment.serial, type: @equipment.type }
    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_redirected_to equipment_index_path
  end
end
