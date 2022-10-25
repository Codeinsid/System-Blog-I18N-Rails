require 'test_helper'

class EspecialidadadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especialidadade = especialidadades(:one)
  end

  test "should get index" do
    get especialidadades_url
    assert_response :success
  end

  test "should get new" do
    get new_especialidadade_url
    assert_response :success
  end

  test "should create especialidadade" do
    assert_difference('Especialidadade.count') do
      post especialidadades_url, params: { especialidadade: { poder: @especialidadade.poder, tipo: @especialidadade.tipo } }
    end

    assert_redirected_to especialidadade_url(Especialidadade.last)
  end

  test "should show especialidadade" do
    get especialidadade_url(@especialidadade)
    assert_response :success
  end

  test "should get edit" do
    get edit_especialidadade_url(@especialidadade)
    assert_response :success
  end

  test "should update especialidadade" do
    patch especialidadade_url(@especialidadade), params: { especialidadade: { poder: @especialidadade.poder, tipo: @especialidadade.tipo } }
    assert_redirected_to especialidadade_url(@especialidadade)
  end

  test "should destroy especialidadade" do
    assert_difference('Especialidadade.count', -1) do
      delete especialidadade_url(@especialidadade)
    end

    assert_redirected_to especialidadades_url
  end
end
