class Admins::BedsController < Admins::ManagementController
  before_action :set_bed, only: %i[ show edit update destroy ]

  # GET /admins/beds or /admins/beds.json
  def index
    @beds = Bed.all
  end

  # GET /admins/beds/1 or /admins/beds/1.json
  def show
  end

  # GET /admins/beds/new
  def new
    @bed = Bed.new
  end

  # GET /admins/beds/1/edit
  def edit
  end

  # POST /admins/beds or /admins/beds.json
  def create
    @bed = Bed.new(bed_params)

    respond_to do |format|
      if @bed.save
        format.html { redirect_to [ :admins, @bed ], notice: "Bed was successfully created." }
        format.json { render :show, status: :created, location: @bed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/beds/1 or /admins/beds/1.json
  def update
    respond_to do |format|
      if @bed.update(bed_params)
        format.html { redirect_to [ :admins, @bed ], notice: "Bed was successfully updated." }
        format.json { render :show, status: :ok, location: @bed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/beds/1 or /admins/beds/1.json
  def destroy
    @bed.destroy!

    respond_to do |format|
      format.html { redirect_to admins_beds_path, status: :see_other, notice: "Bed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed
      @bed = Bed.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bed_params
      params.fetch(:bed, {})
    end
end
