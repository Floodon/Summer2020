class ArtistesController < ApplicationController
  before_action :set_artiste, only: [:show, :edit, :update, :destroy]

  def index
    @artistes = Artiste.all
  end

  def show
  end

  def edit
  end

  def update
    @artiste.update(artiste_params)
  end

  def destroy
    #@artiste.destroy
    #redirect_to root_path
  end

  private
  def set_artiste
    @artiste = Artiste.find(params[:id])
  end
  def artiste_params
    params.require(:artiste).permit(:email, :password, profil_artiste_attributes: [:nom_de_scene, :nom, :prenom, :description, :artiste_id])
  end
end