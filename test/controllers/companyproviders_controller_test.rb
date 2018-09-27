require 'test_helper'

class CompanyprovidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companyprovider = companyproviders(:one)
  end

  test "should get index" do
    get companyproviders_url
    assert_response :success
  end

  test "should get new" do
    get new_companyprovider_url
    assert_response :success
  end

  test "should create companyprovider" do
    assert_difference('Companyprovider.count') do
      post companyproviders_url, params: { companyprovider: { cnpj: @companyprovider.cnpj, codigo_contabil_cliente: @companyprovider.codigo_contabil_cliente, codigo_contabil_fornecedor: @companyprovider.codigo_contabil_fornecedor, nome: @companyprovider.nome, user_id: @companyprovider.user_id } }
    end

    assert_redirected_to companyprovider_url(Companyprovider.last)
  end

  test "should show companyprovider" do
    get companyprovider_url(@companyprovider)
    assert_response :success
  end

  test "should get edit" do
    get edit_companyprovider_url(@companyprovider)
    assert_response :success
  end

  test "should update companyprovider" do
    patch companyprovider_url(@companyprovider), params: { companyprovider: { cnpj: @companyprovider.cnpj, codigo_contabil_cliente: @companyprovider.codigo_contabil_cliente, codigo_contabil_fornecedor: @companyprovider.codigo_contabil_fornecedor, nome: @companyprovider.nome, user_id: @companyprovider.user_id } }
    assert_redirected_to companyprovider_url(@companyprovider)
  end

  test "should destroy companyprovider" do
    assert_difference('Companyprovider.count', -1) do
      delete companyprovider_url(@companyprovider)
    end

    assert_redirected_to companyproviders_url
  end
end
