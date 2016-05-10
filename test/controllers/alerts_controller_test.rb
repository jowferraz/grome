require 'test_helper'

class AlertsControllerTest < ActionController::TestCase
  setup do
    @alert = alerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alert" do
    assert_difference('Alert.count') do
      post :create, alert: { account_id: @alert.account_id, date: @alert.date, date_cad: @alert.date_cad, date_update: @alert.date_update, hasDoc: @alert.hasDoc, item_id: @alert.item_id, status: @alert.status }
    end

    assert_redirected_to alert_path(assigns(:alert))
  end

  test "should show alert" do
    get :show, id: @alert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alert
    assert_response :success
  end

  test "should update alert" do
    patch :update, id: @alert, alert: { account_id: @alert.account_id, date: @alert.date, date_cad: @alert.date_cad, date_update: @alert.date_update, hasDoc: @alert.hasDoc, item_id: @alert.item_id, status: @alert.status }
    assert_redirected_to alert_path(assigns(:alert))
  end

  test "should destroy alert" do
    assert_difference('Alert.count', -1) do
      delete :destroy, id: @alert
    end

    assert_redirected_to alerts_path
  end
end
