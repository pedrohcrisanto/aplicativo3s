require "application_system_test_case"

class AccountfinancialsTest < ApplicationSystemTestCase
  setup do
    @accountfinancial = accountfinancials(:one)
  end

  test "visiting the index" do
    visit accountfinancials_url
    assert_selector "h1", text: "Accountfinancials"
  end

  test "creating a Accountfinancial" do
    visit accountfinancials_url
    click_on "New Accountfinancial"

    fill_in "Codigo Contabil", with: @accountfinancial.codigo_contabil
    fill_in "Companyprovider", with: @accountfinancial.companyprovider_id
    fill_in "Historico", with: @accountfinancial.historico
    fill_in "Natureza", with: @accountfinancial.natureza
    fill_in "Nome", with: @accountfinancial.nome
    fill_in "User", with: @accountfinancial.user_id
    click_on "Create Accountfinancial"

    assert_text "Accountfinancial was successfully created"
    click_on "Back"
  end

  test "updating a Accountfinancial" do
    visit accountfinancials_url
    click_on "Edit", match: :first

    fill_in "Codigo Contabil", with: @accountfinancial.codigo_contabil
    fill_in "Companyprovider", with: @accountfinancial.companyprovider_id
    fill_in "Historico", with: @accountfinancial.historico
    fill_in "Natureza", with: @accountfinancial.natureza
    fill_in "Nome", with: @accountfinancial.nome
    fill_in "User", with: @accountfinancial.user_id
    click_on "Update Accountfinancial"

    assert_text "Accountfinancial was successfully updated"
    click_on "Back"
  end

  test "destroying a Accountfinancial" do
    visit accountfinancials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accountfinancial was successfully destroyed"
  end
end
