require 'test_helper'

class SistemasControllerTest < ActionController::TestCase
  setup do
    @sistema = sistemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sistemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sistema" do
    assert_difference('Sistema.count') do
      post :create, sistema: { coordeanadaa: @sistema.coordeanadaa, coordenadab: @sistema.coordenadab, estado: @sistema.estado, nombre: @sistema.nombre }
    end

    assert_redirected_to sistema_path(assigns(:sistema))
  end

  test "should show sistema" do
    get :show, id: @sistema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sistema
    assert_response :success
  end

  test "should update sistema" do
    patch :update, id: @sistema, sistema: { coordeanadaa: @sistema.coordeanadaa, coordenadab: @sistema.coordenadab, estado: @sistema.estado, nombre: @sistema.nombre }
    assert_redirected_to sistema_path(assigns(:sistema))
  end

  test "should destroy sistema" do
    assert_difference('Sistema.count', -1) do
      delete :destroy, id: @sistema
    end

    assert_redirected_to sistemas_path
  end
end
