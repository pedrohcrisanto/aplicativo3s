require "application_system_test_case"

class CompanyprovidersTest < ApplicationSystemTestCase
  setup do
    @companyprovider = companyproviders(:one)
  end

  test "visiting the index" do
    visit companyproviders_url
    assert_selector "h1", text: "Companyproviders"
  end

  test "creating a Companyprovider" do
    visit companyproviders_url
    click_on "New Companyprovider"

    fill_in "Cnpj", with: @companyprovider.cnpj
    fill_in "Codigo Contabil Cliente", with: @companyprovider.codigo_contabil_cliente
    fill_in "Codigo Contabil Fornecedor", with: @companyprovider.codigo_contabil_fornecedor
    fill_in "Nome", with: @companyprovider.nome
    fill_in "User", with: @companyprovider.user_id
    click_on "Create Companyprovider"

    assert_text "Companyprovider was successfully created"
    click_on "Back"
  end

  test "updating a Companyprovider" do
    visit companyproviders_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @companyprovider.cnpj
    fill_in "Codigo Contabil Cliente", with: @companyprovider.codigo_contabil_cliente
    fill_in "Codigo Contabil Fornecedor", with: @companyprovider.codigo_contabil_fornecedor
    fill_in "Nome", with: @companyprovider.nome
    fill_in "User", with: @companyprovider.user_id
    click_on "Update Companyprovider"

    assert_text "Companyprovider was successfully updated"
    click_on "Back"
  end

  test "destroying a Companyprovider" do
    visit companyproviders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companyprovider was successfully destroyed"
  end
end
