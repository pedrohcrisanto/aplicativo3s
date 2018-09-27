require 'test_helper'

class AccountbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accountbank = accountbanks(:one)
  end

  test "should get index" do
    get accountbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_accountbank_url
    assert_response :success
  end

  test "should create accountbank" do
    assert_difference('Accountbank.count') do
      post accountbanks_url, params: { accountbank: { agencia: @accountbank.agencia, banco: @accountbank.banco, codigo_contabil: @accountbank.codigo_contabil, company_id: @accountbank.company_id, conta_corrente: @accountbank.conta_corrente, nome: @accountbank.nome, user_id: @accountbank.user_id } }
    end

    assert_redirected_to accountbank_url(Accountbank.last)
  end

  test "should show accountbank" do
    get accountbank_url(@accountbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_accountbank_url(@accountbank)
    assert_response :success
  end

  test "should update accountbank" do
    patch accountbank_url(@accountbank), params: { accountbank: { agencia: @accountbank.agencia, banco: @accountbank.banco, codigo_contabil: @accountbank.codigo_contabil, company_id: @accountbank.company_id, conta_corrente: @accountbank.conta_corrente, nome: @accountbank.nome, user_id: @accountbank.user_id } }
    assert_redirected_to accountbank_url(@accountbank)
  end

  test "should destroy accountbank" do
    assert_difference('Accountbank.count', -1) do
      delete accountbank_url(@accountbank)
    end

    assert_redirected_to accountbanks_url
  end
end
