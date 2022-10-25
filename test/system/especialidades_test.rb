require "application_system_test_case"

class EspecialidadesTest < ApplicationSystemTestCase
  setup do
    @especialidade = especialidades(:one)
  end

  test "visiting the index" do
    visit especialidades_url
    assert_selector "h1", text: "Especialidades"
  end

  test "creating a Especialidade" do
    visit especialidades_url
    click_on "New Especialidade"

    fill_in "Poder", with: @especialidade.poder
    fill_in "Tipo", with: @especialidade.tipo
    click_on "Create Especialidade"

    assert_text "Especialidade was successfully created"
    click_on "Back"
  end

  test "updating a Especialidade" do
    visit especialidades_url
    click_on "Edit", match: :first

    fill_in "Poder", with: @especialidade.poder
    fill_in "Tipo", with: @especialidade.tipo
    click_on "Update Especialidade"

    assert_text "Especialidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Especialidade" do
    visit especialidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Especialidade was successfully destroyed"
  end
end
