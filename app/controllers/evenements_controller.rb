class EvenementsController < ApplicationController
  before_action :set_evenement, only: [:show, :edit, :update, :destroy]

  # GET /evenements
  def index
    @evenements = Evenement.all
  end

  # GET /evenements/1
  def show
  end

  # GET /evenements/new
  def new
    @evenement = Evenement.new
  end

  # GET /evenements/1/edit
  def edit
  end

  # POST /evenements
  def create
    @evenement = Evenement.new(evenement_params)

    if @evenement.save
      redirect_to @evenement, notice: 'Evenement was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /evenements/1
  def update
    if @evenement.update(evenement_params)
      redirect_to @evenement, notice: 'Evenement was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /evenements/1
  def destroy
    @evenement.destroy
    redirect_to evenements_url, notice: 'Evenement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenement
      @evenement = Evenement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def evenement_params
      params.require(:evenement).permit(:libelle, :description, :date, :heure, :image)
    end
end
