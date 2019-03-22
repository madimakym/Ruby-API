require "application_system_test_case"

class DejeunersTest < ApplicationSystemTestCase
  setup do
    @dejeuner = dejeuners(:one)
  end

  test "visiting the index" do
    visit dejeuners_url
    assert_selector "h1", text: "Dejeuners"
  end

  test "creating a Dejeuner" do
    visit dejeuners_url
    click_on "New Dejeuner"

    fill_in "Description", with: @dejeuner.description
    fill_in "Image", with: @dejeuner.image
    fill_in "Libelle", with: @dejeuner.libelle
    fill_in "Prix", with: @dejeuner.prix
    click_on "Create Dejeuner"

    assert_text "Dejeuner was successfully created"
    click_on "Back"
  end

  test "updating a Dejeuner" do
    visit dejeuners_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dejeuner.description
    fill_in "Image", with: @dejeuner.image
    fill_in "Libelle", with: @dejeuner.libelle
    fill_in "Prix", with: @dejeuner.prix
    click_on "Update Dejeuner"

    assert_text "Dejeuner was successfully updated"
    click_on "Back"
  end

  test "destroying a Dejeuner" do
    visit dejeuners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dejeuner was successfully destroyed"
  end
end
