json.extract! profil_artiste, :id, :nom_de_scene, :nom, :prenom, :description, :artiste_id, :created_at, :updated_at
json.url profil_artiste_url(profil_artiste, format: :json)
