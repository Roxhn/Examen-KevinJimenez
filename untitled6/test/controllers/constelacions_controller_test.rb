require 'test_helper'

class ConstelacionsControllerTest < ActionController::TestCase
  setup do
    @constelacion = constelacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constelacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constelacion" do
    assert_difference('Constelacion.count') do
      post :create, constelacion: { CoordenadaA: @constelacion.CoordenadaA, CoordenadaB: @constelacion.CoordenadaB, Estado: @constelacion.Estado, Nombre: @constelacion.Nombre }
    end

    assert_redirected_to constelacion_path(assigns(:constelacion))
  end

  test "should show constelacion" do
    get :show, id: @constelacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constelacion
    assert_response :success
  end

  test "should update constelacion" do
    patch :update, id: @constelacion, constelacion: { CoordenadaA: @constelacion.CoordenadaA, CoordenadaB: @constelacion.CoordenadaB, Estado: @constelacion.Estado, Nombre: @constelacion.Nombre }
    assert_redirected_to constelacion_path(assigns(:constelacion))
  end

  test "should destroy constelacion" do
    assert_difference('Constelacion.count', -1) do
      delete :destroy, id: @constelacion
    end

    assert_redirected_to constelacions_path
  end
end
