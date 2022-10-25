require "application_system_test_case"

class CdzsTest < ApplicationSystemTestCase
  setup do
    @cdz = cdzs(:one)
  end

  test "visiting the index" do
    visit cdzs_url
    assert_selector "h1", text: "Cdzs"
  end

  test "creating a Cdz" do
    visit cdzs_url
    click_on "New Cdz"

    fill_in "Costelação", with: @cdz.costelação
    fill_in "Foto", with: @cdz.foto
    fill_in "Idade", with: @cdz.idade
    fill_in "Nome", with: @cdz.nome
    click_on "Create Cdz"

    assert_text "Cdz was successfully created"
    click_on "Back"
  end

  test "updating a Cdz" do
    visit cdzs_url
    click_on "Edit", match: :first

    fill_in "Costelação", with: @cdz.costelação
    fill_in "Foto", with: @cdz.foto
    fill_in "Idade", with: @cdz.idade
    fill_in "Nome", with: @cdz.nome
    click_on "Update Cdz"

    assert_text "Cdz was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdz" do
    visit cdzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdz was successfully destroyed"
  end
end
