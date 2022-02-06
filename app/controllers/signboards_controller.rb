class SignboardsController < ApplicationController
  before_action :set_signboard, only: %i[ show edit update destroy ]

  # GET /signboards or /signboards.json
  def index
    @signboards = Signboard.all
  end

  # GET /signboards/1 or /signboards/1.json
  def show
  end

  # GET /signboards/new
  def new
    @signboard = Signboard.new
  end

  # GET /signboards/1/edit
  def edit
  end

  # POST /signboards or /signboards.json
  def create
    @signboard = Signboard.new(signboard_params)

    respond_to do |format|
      if @signboard.save
        format.html { redirect_to @signboard, notice: "Signboard was successfully created." }
        format.json { render :show, status: :created, location: @signboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @signboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signboards/1 or /signboards/1.json
  def update
    respond_to do |format|
      if @signboard.update(signboard_params)
        format.html { redirect_to @signboard, notice: "Signboard was successfully updated." }
        format.json { render :show, status: :ok, location: @signboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @signboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signboards/1 or /signboards/1.json
  def destroy
    @signboard.destroy
    respond_to do |format|
      format.html { redirect_to signboards_url, notice: "Signboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signboard
      @signboard = Signboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def signboard_params
      params.require(:signboard).permit(:name, :width, :height, :address, :owner_id)
    end
end
