require "application_system_test_case"

class TypepaymentsTest < ApplicationSystemTestCase
  setup do
    @typepayment = typepayments(:one)
  end

  test "visiting the index" do
    visit typepayments_url
    assert_selector "h1", text: "Typepayments"
  end

  test "creating a Typepayment" do
    visit typepayments_url
    click_on "New Typepayment"

    fill_in "Descricao", with: @typepayment.descricao
    fill_in "Nome", with: @typepayment.nome
    fill_in "User", with: @typepayment.user_id
    click_on "Create Typepayment"

    assert_text "Typepayment was successfully created"
    click_on "Back"
  end

  test "updating a Typepayment" do
    visit typepayments_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @typepayment.descricao
    fill_in "Nome", with: @typepayment.nome
    fill_in "User", with: @typepayment.user_id
    click_on "Update Typepayment"

    assert_text "Typepayment was successfully updated"
    click_on "Back"
  end

  test "destroying a Typepayment" do
    visit typepayments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typepayment was successfully destroyed"
  end
end
