class HealthChecksController < ApplicationController
  before_action :set_health_check, only: [:show, :edit, :update, :destroy]

  # GET /health_checks
  # GET /health_checks.json
  def index
    @health_checks = HealthCheck.all
  end

  # GET /health_checks/1
  # GET /health_checks/1.json
  def show
  end

  # GET /health_checks/new
  def new
    @health_check = HealthCheck.new
  end

  # GET /health_checks/1/edit
  def edit
  end

  # POST /health_checks
  # POST /health_checks.json
  def create
    @health_check = HealthCheck.new(health_check_params)

    respond_to do |format|
      if @health_check.save
        format.html { redirect_to @health_check, notice: 'Health check was successfully created.' }
        format.json { render :show, status: :created, location: @health_check }
      else
        format.html { render :new }
        format.json { render json: @health_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_checks/1
  # PATCH/PUT /health_checks/1.json
  def update
    respond_to do |format|
      if @health_check.update(health_check_params)
        format.html { redirect_to @health_check, notice: 'Health check was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_check }
      else
        format.html { render :edit }
        format.json { render json: @health_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_checks/1
  # DELETE /health_checks/1.json
  def destroy
    @health_check.destroy
    respond_to do |format|
      format.html { redirect_to health_checks_url, notice: 'Health check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_check
      @health_check = HealthCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_check_params
      params.fetch(:health_check).permit(:note)
    end
end
