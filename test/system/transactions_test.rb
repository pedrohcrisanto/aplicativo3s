require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    fill_in "Accountbank", with: @transaction.accountbank_id
    fill_in "Accountfinancial", with: @transaction.accountfinancial_id
    fill_in "Category", with: @transaction.category_id
    fill_in "Company", with: @transaction.company_id
    fill_in "Companyprovider", with: @transaction.companyprovider_id
    fill_in "Data Baixa", with: @transaction.data_baixa
    fill_in "Data Vencimento", with: @transaction.data_vencimento
    fill_in "Doctype", with: @transaction.doctype_id
    fill_in "Documents", with: @transaction.documents
    fill_in "Historico", with: @transaction.historico
    fill_in "Typepayment", with: @transaction.typepayment_id
    fill_in "User", with: @transaction.user_id
    fill_in "Valor Acrescimo", with: @transaction.valor_acrescimo
    fill_in "Valor Desconto", with: @transaction.valor_desconto
    fill_in "Valor Liquido", with: @transaction.valor_liquido
    fill_in "Valor Operacao", with: @transaction.valor_operacao
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    fill_in "Accountbank", with: @transaction.accountbank_id
    fill_in "Accountfinancial", with: @transaction.accountfinancial_id
    fill_in "Category", with: @transaction.category_id
    fill_in "Company", with: @transaction.company_id
    fill_in "Companyprovider", with: @transaction.companyprovider_id
    fill_in "Data Baixa", with: @transaction.data_baixa
    fill_in "Data Vencimento", with: @transaction.data_vencimento
    fill_in "Doctype", with: @transaction.doctype_id
    fill_in "Documents", with: @transaction.documents
    fill_in "Historico", with: @transaction.historico
    fill_in "Typepayment", with: @transaction.typepayment_id
    fill_in "User", with: @transaction.user_id
    fill_in "Valor Acrescimo", with: @transaction.valor_acrescimo
    fill_in "Valor Desconto", with: @transaction.valor_desconto
    fill_in "Valor Liquido", with: @transaction.valor_liquido
    fill_in "Valor Operacao", with: @transaction.valor_operacao
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end
end
