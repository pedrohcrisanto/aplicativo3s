require 'test_helper'

class AccountfinancialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accountfinancial = accountfinancials(:one)
  end

  test "should get index" do
    get accountfinancials_url
    assert_response :success
  end

  test "should get new" do
    get new_accountfinancial_url
    assert_response :success
  end

  test "should create accountfinancial" do
    assert_difference('Accountfinancial.count') do
      post accountfinancials_url, params: { accountfinancial: { codigo_contabil: @accountfinancial.codigo_contabil, companyprovider_id: @accountfinancial.companyprovider_id, historico: @accountfinancial.historico, natureza: @accountfinancial.natureza, nome: @accountfinancial.nome, user_id: @accountfinancial.user_id } }
    end

    assert_redirected_to accountfinancial_url(Accountfinancial.last)
  end

  test "should show accountfinancial" do
    get accountfinancial_url(@accountfinancial)
    assert_response :success
  end

  test "should get edit" do
    get edit_accountfinancial_url(@accountfinancial)
    assert_response :success
  end

  test "should update accountfinancial" do
    patch accountfinancial_url(@accountfinancial), params: { accountfinancial: { codigo_contabil: @accountfinancial.codigo_contabil, companyprovider_id: @accountfinancial.companyprovider_id, historico: @accountfinancial.historico, natureza: @accountfinancial.natureza, nome: @accountfinancial.nome, user_id: @accountfinancial.user_id } }
    assert_redirected_to accountfinancial_url(@accountfinancial)
  end

  test "should destroy accountfinancial" do
    assert_difference('Accountfinancial.count', -1) do
      delete accountfinancial_url(@accountfinancial)
    end

    assert_redirected_to accountfinancials_url
  end
end
