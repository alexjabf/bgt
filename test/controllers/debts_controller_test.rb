require 'test_helper'

class DebtsControllerTest < ActionController::TestCase
  setup do
    @debt = debts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debt" do
    assert_difference('Debt.count') do
      post :create, debt: { clase_doc: @debt.clase_doc, client_id: @debt.client_id, column: @debt.column, dias_venc: @debt.dias_venc, fecha: @debt.fecha, fecha_venc: @debt.fecha_venc, moneda: @debt.moneda, referencia: @debt.referencia, saldo: @debt.saldo }
    end

    assert_redirected_to debt_path(assigns(:debt))
  end

  test "should show debt" do
    get :show, id: @debt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debt
    assert_response :success
  end

  test "should update debt" do
    patch :update, id: @debt, debt: { clase_doc: @debt.clase_doc, client_id: @debt.client_id, column: @debt.column, dias_venc: @debt.dias_venc, fecha: @debt.fecha, fecha_venc: @debt.fecha_venc, moneda: @debt.moneda, referencia: @debt.referencia, saldo: @debt.saldo }
    assert_redirected_to debt_path(assigns(:debt))
  end

  test "should destroy debt" do
    assert_difference('Debt.count', -1) do
      delete :destroy, id: @debt
    end

    assert_redirected_to debts_path
  end
end
