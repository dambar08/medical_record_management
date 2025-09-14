class Admins::BedTypesController < Admins::ManagementController
  before_action :set_bed_type, only: %i[ show edit update destroy ]

  # GET /admins/bed_types or /admins/bed_types.json
  def index
    @bed_types = BedType.all
  end

  # GET /admins/bed_types/1 or /admins/bed_types/1.json
  def show
  end

  # GET /admins/bed_types/new
  def new
    @bed_type = BedType.new
  end

  # GET /admins/bed_types/1/edit
  def edit
  end

  # POST /admins/bed_types or /admins/bed_types.json
  def create
    @bed_type = BedType.new(bed_type_params)

    respond_to do |format|
      if @bed_type.save
        format.html { redirect_to [:admins, @bed_type], notice: "Bed type was successfully created." }
        format.json { render :show, status: :created, location: @bed_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bed_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/bed_types/1 or /admins/bed_types/1.json
  def update
    respond_to do |format|
      if @bed_type.update(bed_type_params)
        format.html { redirect_to [:admins, @bed_type], notice: "Bed type was successfully updated." }
        format.json { render :show, status: :ok, location: @bed_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bed_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/bed_types/1 or /admins/bed_types/1.json
  def destroy
    @bed_type.destroy!

    respond_to do |format|
      format.html { redirect_to admins_bed_types_path, status: :see_other, notice: "Bed type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed_type
      @bed_type = BedType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bed_type_params
      params.fetch(:bed_type, {})
    end
end
