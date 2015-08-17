require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, material: { centro: @material.centro, config: @material.config, descrip: @material.descrip, exist_ua: @material.exist_ua, existencia: @material.existencia, moneda: @material.moneda, order_detail_id: @material.order_detail_id, ped_detnumped: @material.ped_detnumped, ped_detpos2: @material.ped_detpos2, ped_detpos: @material.ped_detpos, peso_teo: @material.peso_teo, por_uni: @material.por_uni, precio: @material.precio, unidad: @material.unidad, unidad_alm: @material.unidad_alm }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, id: @material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material
    assert_response :success
  end

  test "should update material" do
    patch :update, id: @material, material: { centro: @material.centro, config: @material.config, descrip: @material.descrip, exist_ua: @material.exist_ua, existencia: @material.existencia, moneda: @material.moneda, order_detail_id: @material.order_detail_id, ped_detnumped: @material.ped_detnumped, ped_detpos2: @material.ped_detpos2, ped_detpos: @material.ped_detpos, peso_teo: @material.peso_teo, por_uni: @material.por_uni, precio: @material.precio, unidad: @material.unidad, unidad_alm: @material.unidad_alm }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material
    end

    assert_redirected_to materials_path
  end
end
