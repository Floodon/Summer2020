require 'test_helper'

class ProfilArtistesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profil_artiste = profil_artistes(:one)
  end

  test "should get index" do
    get profil_artistes_url
    assert_response :success
  end

  test "should get new" do
    get new_profil_artiste_url
    assert_response :success
  end

  test "should create profil_artiste" do
    assert_difference('ProfilArtiste.count') do
      post profil_artistes_url, params: { profil_artiste: { artiste_id: @profil_artiste.artiste_id, description: @profil_artiste.description, nom: @profil_artiste.nom, nom_de_scene: @profil_artiste.nom_de_scene, prenom: @profil_artiste.prenom } }
    end

    assert_redirected_to profil_artiste_url(ProfilArtiste.last)
  end

  test "should show profil_artiste" do
    get profil_artiste_url(@profil_artiste)
    assert_response :success
  end

  test "should get edit" do
    get edit_profil_artiste_url(@profil_artiste)
    assert_response :success
  end

  test "should update profil_artiste" do
    patch profil_artiste_url(@profil_artiste), params: { profil_artiste: { artiste_id: @profil_artiste.artiste_id, description: @profil_artiste.description, nom: @profil_artiste.nom, nom_de_scene: @profil_artiste.nom_de_scene, prenom: @profil_artiste.prenom } }
    assert_redirected_to profil_artiste_url(@profil_artiste)
  end

  test "should destroy profil_artiste" do
    assert_difference('ProfilArtiste.count', -1) do
      delete profil_artiste_url(@profil_artiste)
    end

    assert_redirected_to profil_artistes_url
  end
end
