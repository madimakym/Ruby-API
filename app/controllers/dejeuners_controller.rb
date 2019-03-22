class DejeunersController < ApplicationController
  before_action :set_dejeuner, only: [:show, :edit, :update, :destroy]

  # GET /dejeuners
  def index
    @dejeuners = Dejeuner.all
  end

  # GET /dejeuners/1
  def show
  end

  # GET /dejeuners/new
  def new
    @dejeuner = Dejeuner.new
  end

  # GET /dejeuners/1/edit
  def edit
  end

  # POST /dejeuners
  def create
    @dejeuner = Dejeuner.new(dejeuner_params)

    if @dejeuner.save
      redirect_to @dejeuner, notice: 'Dejeuner was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dejeuners/1
  def update
    if @dejeuner.update(dejeuner_params)
      redirect_to @dejeuner, notice: 'Dejeuner was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dejeuners/1
  def destroy
    @dejeuner.destroy
    redirect_to dejeuners_url, notice: 'Dejeuner was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dejeuner
      @dejeuner = Dejeuner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dejeuner_params
      params.require(:dejeuner).permit(:libelle, :description, :prix, :image)
    end
end
