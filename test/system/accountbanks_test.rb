require "application_system_test_case"

class AccountbanksTest < ApplicationSystemTestCase
  setup do
    @accountbank = accountbanks(:one)
  end

  test "visiting the index" do
    visit accountbanks_url
    assert_selector "h1", text: "Accountbanks"
  end

  test "creating a Accountbank" do
    visit accountbanks_url
    click_on "New Accountbank"

    fill_in "Agencia", with: @accountbank.agencia
    fill_in "Banco", with: @accountbank.banco
    fill_in "Codigo Contabil", with: @accountbank.codigo_contabil
    fill_in "Company", with: @accountbank.company_id
    fill_in "Conta Corrente", with: @accountbank.conta_corrente
    fill_in "Nome", with: @accountbank.nome
    fill_in "User", with: @accountbank.user_id
    click_on "Create Accountbank"

    assert_text "Accountbank was successfully created"
    click_on "Back"
  end

  test "updating a Accountbank" do
    visit accountbanks_url
    click_on "Edit", match: :first

    fill_in "Agencia", with: @accountbank.agencia
    fill_in "Banco", with: @accountbank.banco
    fill_in "Codigo Contabil", with: @accountbank.codigo_contabil
    fill_in "Company", with: @accountbank.company_id
    fill_in "Conta Corrente", with: @accountbank.conta_corrente
    fill_in "Nome", with: @accountbank.nome
    fill_in "User", with: @accountbank.user_id
    click_on "Update Accountbank"

    assert_text "Accountbank was successfully updated"
    click_on "Back"
  end

  test "destroying a Accountbank" do
    visit accountbanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accountbank was successfully destroyed"
  end
end
