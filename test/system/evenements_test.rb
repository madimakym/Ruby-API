require "application_system_test_case"

class EvenementsTest < ApplicationSystemTestCase
  setup do
    @evenement = evenements(:one)
  end

  test "visiting the index" do
    visit evenements_url
    assert_selector "h1", text: "Evenements"
  end

  test "creating a Evenement" do
    visit evenements_url
    click_on "New Evenement"

    fill_in "Date", with: @evenement.date
    fill_in "Description", with: @evenement.description
    fill_in "Heure", with: @evenement.heure
    fill_in "Image", with: @evenement.image
    fill_in "Libelle", with: @evenement.libelle
    click_on "Create Evenement"

    assert_text "Evenement was successfully created"
    click_on "Back"
  end

  test "updating a Evenement" do
    visit evenements_url
    click_on "Edit", match: :first

    fill_in "Date", with: @evenement.date
    fill_in "Description", with: @evenement.description
    fill_in "Heure", with: @evenement.heure
    fill_in "Image", with: @evenement.image
    fill_in "Libelle", with: @evenement.libelle
    click_on "Update Evenement"

    assert_text "Evenement was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement" do
    visit evenements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement was successfully destroyed"
  end
end
