require 'test_helper'

class EspecialidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especialidade = especialidades(:one)
  end

  test "should get index" do
    get especialidades_url
    assert_response :success
  end

  test "should get new" do
    get new_especialidade_url
    assert_response :success
  end

  test "should create especialidade" do
    assert_difference('Especialidade.count') do
      post especialidades_url, params: { especialidade: { poder: @especialidade.poder, tipo: @especialidade.tipo } }
    end

    assert_redirected_to especialidade_url(Especialidade.last)
  end

  test "should show especialidade" do
    get especialidade_url(@especialidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_especialidade_url(@especialidade)
    assert_response :success
  end

  test "should update especialidade" do
    patch especialidade_url(@especialidade), params: { especialidade: { poder: @especialidade.poder, tipo: @especialidade.tipo } }
    assert_redirected_to especialidade_url(@especialidade)
  end

  test "should destroy especialidade" do
    assert_difference('Especialidade.count', -1) do
      delete especialidade_url(@especialidade)
    end

    assert_redirected_to especialidades_url
  end
end
