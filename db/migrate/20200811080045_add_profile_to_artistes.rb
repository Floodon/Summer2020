class AddProfileToArtistes < ActiveRecord::Migration[6.0]
  def change
    add_reference :artistes, :profil_artiste, null: true, foreign_key: true
  end
end
