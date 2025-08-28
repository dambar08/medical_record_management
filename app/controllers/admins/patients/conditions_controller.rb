class Admins::Patients::ConditionsController < Admins::ManagementController
  before_action :set_condition, only: %i[ show edit update destroy ]

  # GET /admins/patients/conditions or /admins/patients/conditions.json
  def index
    @conditions = Condition.all
    # render layout: false
  end

  # GET /admins/patients/conditions/1 or /admins/patients/conditions/1.json
  def show
  end

  # GET /admins/patients/conditions/new
  def new
    @condition = Condition.new
  end

  # GET /admins/patients/conditions/1/edit
  def edit
  end

  # POST /admins/patients/conditions or /admins/patients/conditions.json
  def create
    @condition = Condition.new(condition_params)

    respond_to do |format|
      if @condition.save
        format.html { redirect_to [ :admins, :patients, @condition ], notice: "Condition was successfully created." }
        format.json { render :show, status: :created, location: @condition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/patients/conditions/1 or /admins/patients/conditions/1.json
  def update
    respond_to do |format|
      if @condition.update(condition_params)
        format.html { redirect_to [ :admins, :patients, @condition ], notice: "Condition was successfully updated." }
        format.json { render :show, status: :ok, location: @condition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/patients/conditions/1 or /admins/patients/conditions/1.json
  def destroy
    @condition.destroy!

    respond_to do |format|
      format.html { redirect_to admins_patients_conditions_path, status: :see_other, notice: "Condition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition
      @condition = Condition.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def condition_params
      params.fetch(:condition, {})
    end
end
