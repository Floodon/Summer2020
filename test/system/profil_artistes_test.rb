require "application_system_test_case"

class ProfilArtistesTest < ApplicationSystemTestCase
  setup do
    @profil_artiste = profil_artistes(:one)
  end

  test "visiting the index" do
    visit profil_artistes_url
    assert_selector "h1", text: "Profil Artistes"
  end

  test "creating a Profil artiste" do
    visit profil_artistes_url
    click_on "New Profil Artiste"

    fill_in "Artiste", with: @profil_artiste.artiste_id
    fill_in "Description", with: @profil_artiste.description
    fill_in "Nom", with: @profil_artiste.nom
    fill_in "Nom de scene", with: @profil_artiste.nom_de_scene
    fill_in "Prenom", with: @profil_artiste.prenom
    click_on "Create Profil artiste"

    assert_text "Profil artiste was successfully created"
    click_on "Back"
  end

  test "updating a Profil artiste" do
    visit profil_artistes_url
    click_on "Edit", match: :first

    fill_in "Artiste", with: @profil_artiste.artiste_id
    fill_in "Description", with: @profil_artiste.description
    fill_in "Nom", with: @profil_artiste.nom
    fill_in "Nom de scene", with: @profil_artiste.nom_de_scene
    fill_in "Prenom", with: @profil_artiste.prenom
    click_on "Update Profil artiste"

    assert_text "Profil artiste was successfully updated"
    click_on "Back"
  end

  test "destroying a Profil artiste" do
    visit profil_artistes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profil artiste was successfully destroyed"
  end
end
