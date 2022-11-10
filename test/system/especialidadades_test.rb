require "application_system_test_case"

class EspecialidadadesTest < ApplicationSystemTestCase
  setup do
    @especialidadade = especialidadades(:one)
  end

  test "visiting the index" do
    visit especialidadades_url
    assert_selector "h1", text: "Especialidadades"
  end

  test "creating a Especialidadade" do
    visit especialidadades_url
    click_on "New Especialidadade"

    fill_in "Poder", with: @especialidadade.poder
    fill_in "Tipo", with: @especialidadade.tipo
    click_on "Create Especialidadade"

    assert_text "Especialidadade was successfully created"
    click_on "Back"
  end

  test "updating a Especialidadade" do
    visit especialidadades_url
    click_on "Edit", match: :first

    fill_in "Poder", with: @especialidadade.poder
    fill_in "Tipo", with: @especialidadade.tipo
    click_on "Update Especialidadade"

    assert_text "Especialidadade was successfully updated"
    click_on "Back"
  end

  test "destroying a Especialidadade" do
    visit especialidadades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Especialidadade was successfully destroyed"
  end
end
