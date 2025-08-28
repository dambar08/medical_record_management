class Admins::AppointmentsController < Admins::ManagementController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  # GET /admins/appointments or /admins/appointments.json
  def index
  end

  # GET /admins/appointments/1 or /admins/appointments/1.json
  def show
  end

  # GET /admins/appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /admins/appointments/1/edit
  def edit
  end

  # POST /admins/appointments or /admins/appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to [ :admins, @appointment ], notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/appointments/1 or /admins/appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to [ :admins, @appointment ], notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/appointments/1 or /admins/appointments/1.json
  def destroy
    @appointment.destroy!

    respond_to do |format|
      format.html { redirect_to admins_appointments_path, status: :see_other, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.fetch(:appointment, {})
    end
end
