class Admins::CohertsController < ApplicationController
  before_action :set_cohert, only: %i[ show edit update destroy ]

  # GET /admins/coherts or /admins/coherts.json
  def index
    @coherts = Cohert.all
  end

  # GET /admins/coherts/1 or /admins/coherts/1.json
  def show
  end

  # GET /admins/coherts/new
  def new
    @cohert = Cohert.new
  end

  # GET /admins/coherts/1/edit
  def edit
  end

  # POST /admins/coherts or /admins/coherts.json
  def create
    @cohert = Cohert.new(cohert_params)

    respond_to do |format|
      if @cohert.save
        format.html { redirect_to [:admins, @cohert], notice: "Cohert was successfully created." }
        format.json { render :show, status: :created, location: @cohert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cohert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/coherts/1 or /admins/coherts/1.json
  def update
    respond_to do |format|
      if @cohert.update(cohert_params)
        format.html { redirect_to [:admins, @cohert], notice: "Cohert was successfully updated." }
        format.json { render :show, status: :ok, location: @cohert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cohert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/coherts/1 or /admins/coherts/1.json
  def destroy
    @cohert.destroy!

    respond_to do |format|
      format.html { redirect_to admins_coherts_path, status: :see_other, notice: "Cohert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohert
      @cohert = Cohert.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def cohert_params
      params.fetch(:cohert, {})
    end
end
