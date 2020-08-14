class CreateProfilArtistes < ActiveRecord::Migration[6.0]
  def change
    create_table :profil_artistes do |t|
      t.string :nom_de_scene
      t.string :nom
      t.string :prenom
      t.string :description
      t.references :artiste, null: false, foreign_key: true

      t.timestamps
    end
  end
end
