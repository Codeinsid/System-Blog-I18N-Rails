require 'test_helper'

class CdzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdz = cdzs(:one)
  end

  test "should get index" do
    get cdzs_url
    assert_response :success
  end

  test "should get new" do
    get new_cdz_url
    assert_response :success
  end

  test "should create cdz" do
    assert_difference('Cdz.count') do
      post cdzs_url, params: { cdz: { costelação: @cdz.costelação, foto: @cdz.foto, idade: @cdz.idade, nome: @cdz.nome } }
    end

    assert_redirected_to cdz_url(Cdz.last)
  end

  test "should show cdz" do
    get cdz_url(@cdz)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdz_url(@cdz)
    assert_response :success
  end

  test "should update cdz" do
    patch cdz_url(@cdz), params: { cdz: { costelação: @cdz.costelação, foto: @cdz.foto, idade: @cdz.idade, nome: @cdz.nome } }
    assert_redirected_to cdz_url(@cdz)
  end

  test "should destroy cdz" do
    assert_difference('Cdz.count', -1) do
      delete cdz_url(@cdz)
    end

    assert_redirected_to cdzs_url
  end
end
