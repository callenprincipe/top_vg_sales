class RegionVideogamesController < ApplicationController
  before_action :set_region_videogame, only: %i[ show edit update destroy ]

  # GET /region_videogames or /region_videogames.json
  def index
    @region_videogames = RegionVideogame.all
  end

  # GET /region_videogames/1 or /region_videogames/1.json
  def show
  end

  # GET /region_videogames/new
  def new
    @region_videogame = RegionVideogame.new
  end

  # GET /region_videogames/1/edit
  def edit
  end

  # POST /region_videogames or /region_videogames.json
  def create
    @region_videogame = RegionVideogame.new(region_videogame_params)

    respond_to do |format|
      if @region_videogame.save
        format.html { redirect_to region_videogame_url(@region_videogame), notice: "Region videogame was successfully created." }
        format.json { render :show, status: :created, location: @region_videogame }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @region_videogame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /region_videogames/1 or /region_videogames/1.json
  def update
    respond_to do |format|
      if @region_videogame.update(region_videogame_params)
        format.html { redirect_to region_videogame_url(@region_videogame), notice: "Region videogame was successfully updated." }
        format.json { render :show, status: :ok, location: @region_videogame }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @region_videogame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /region_videogames/1 or /region_videogames/1.json
  def destroy
    @region_videogame.destroy!

    respond_to do |format|
      format.html { redirect_to region_videogames_url, notice: "Region videogame was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region_videogame
      @region_videogame = RegionVideogame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def region_videogame_params
      params.require(:region_videogame).permit(:videogame_id, :region_id, :sales)
    end
end
