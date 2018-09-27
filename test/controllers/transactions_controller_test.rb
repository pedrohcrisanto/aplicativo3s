require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_url
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post transactions_url, params: { transaction: { accountbank_id: @transaction.accountbank_id, accountfinancial_id: @transaction.accountfinancial_id, category_id: @transaction.category_id, company_id: @transaction.company_id, companyprovider_id: @transaction.companyprovider_id, data_baixa: @transaction.data_baixa, data_vencimento: @transaction.data_vencimento, doctype_id: @transaction.doctype_id, documents: @transaction.documents, historico: @transaction.historico, typepayment_id: @transaction.typepayment_id, user_id: @transaction.user_id, valor_acrescimo: @transaction.valor_acrescimo, valor_desconto: @transaction.valor_desconto, valor_liquido: @transaction.valor_liquido, valor_operacao: @transaction.valor_operacao } }
    end

    assert_redirected_to transaction_url(Transaction.last)
  end

  test "should show transaction" do
    get transaction_url(@transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_url(@transaction)
    assert_response :success
  end

  test "should update transaction" do
    patch transaction_url(@transaction), params: { transaction: { accountbank_id: @transaction.accountbank_id, accountfinancial_id: @transaction.accountfinancial_id, category_id: @transaction.category_id, company_id: @transaction.company_id, companyprovider_id: @transaction.companyprovider_id, data_baixa: @transaction.data_baixa, data_vencimento: @transaction.data_vencimento, doctype_id: @transaction.doctype_id, documents: @transaction.documents, historico: @transaction.historico, typepayment_id: @transaction.typepayment_id, user_id: @transaction.user_id, valor_acrescimo: @transaction.valor_acrescimo, valor_desconto: @transaction.valor_desconto, valor_liquido: @transaction.valor_liquido, valor_operacao: @transaction.valor_operacao } }
    assert_redirected_to transaction_url(@transaction)
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete transaction_url(@transaction)
    end

    assert_redirected_to transactions_url
  end
end
