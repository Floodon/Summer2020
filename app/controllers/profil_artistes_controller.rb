class ProfilArtistesController < ApplicationController
  before_action :set_profil_artiste, only: [:show, :edit, :update, :destroy]

  # GET /profil_artistes
  # GET /profil_artistes.json
  def index
    @profil_artistes = ProfilArtiste.all
  end

  # GET /profil_artistes/1
  # GET /profil_artistes/1.json
  def show
  end

  # GET /profil_artistes/new
  def new
    @profil_artiste = ProfilArtiste.new
  end

  # GET /profil_artistes/1/edit
  def edit
  end

  # POST /profil_artistes
  # POST /profil_artistes.json
  def create
    @profil_artiste = ProfilArtiste.new(profil_artiste_params)
    @profil_artiste.artiste_id = current_artiste.id
    respond_to do |format|
      if @profil_artiste.save
        format.html { redirect_to @profil_artiste, notice: 'Profil artiste was successfully created.' }
        format.json { render :show, status: :created, location: @profil_artiste }
      else
        format.html { render :new }
        format.json { render json: @profil_artiste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profil_artistes/1
  # PATCH/PUT /profil_artistes/1.json
  def update
    respond_to do |format|
      if @profil_artiste.update(profil_artiste_params)
        format.html { redirect_to @profil_artiste, notice: 'Profil artiste was successfully updated.' }
        format.json { render :show, status: :ok, location: @profil_artiste }
      else
        format.html { render :edit }
        format.json { render json: @profil_artiste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profil_artistes/1
  # DELETE /profil_artistes/1.json
  def destroy
    @profil_artiste.destroy
    respond_to do |format|
      format.html { redirect_to profil_artistes_url, notice: 'Profil artiste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profil_artiste
      @profil_artiste = current_artiste.profil_artiste
    end

    # Only allow a list of trusted parameters through.
    def profil_artiste_params
      params.require(:profil_artiste).permit(:nom_de_scene, :nom, :prenom, :description, :artiste_id)
    end
end
