class Admins::PatientsController < Admins::ManagementController
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /admins/patients or /admins/patients.json
  def index
    @patients = Patient.all
  end

  # GET /admins/patients/1 or /admins/patients/1.json
  def show
  end

  # GET /admins/patients/new
  def new
    @patient = Patient.new
  end

  # GET /admins/patients/1/edit
  def edit
  end

  # POST /admins/patients or /admins/patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to [ :admins, @patient ], notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/patients/1 or /admins/patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to [ :admins, @patient ], notice: "Patient was successfully updated." }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/patients/1 or /admins/patients/1.json
  def destroy
    @patient.destroy!

    respond_to do |format|
      format.html { redirect_to admins_patients_path, status: :see_other, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.fetch(:patient, {})
    end
end
