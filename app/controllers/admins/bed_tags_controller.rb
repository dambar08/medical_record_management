class Admins::BedTagsController < Admins::ManagementController
  before_action :set_bed_tag, only: %i[ show edit update destroy ]

  # GET /admins/bed_tags or /admins/bed_tags.json
  def index
    @bed_tags = BedTag.all
  end

  # GET /admins/bed_tags/1 or /admins/bed_tags/1.json
  def show
  end

  # GET /admins/bed_tags/new
  def new
    @bed_tag = BedTag.new
  end

  # GET /admins/bed_tags/1/edit
  def edit
  end

  # POST /admins/bed_tags or /admins/bed_tags.json
  def create
    @bed_tag = BedTag.new(bed_tag_params)

    respond_to do |format|
      if @bed_tag.save
        format.html { redirect_to [:admins, @bed_tag], notice: "Bed tag was successfully created." }
        format.json { render :show, status: :created, location: @bed_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bed_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/bed_tags/1 or /admins/bed_tags/1.json
  def update
    respond_to do |format|
      if @bed_tag.update(bed_tag_params)
        format.html { redirect_to [:admins, @bed_tag], notice: "Bed tag was successfully updated." }
        format.json { render :show, status: :ok, location: @bed_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bed_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/bed_tags/1 or /admins/bed_tags/1.json
  def destroy
    @bed_tag.destroy!

    respond_to do |format|
      format.html { redirect_to admins_bed_tags_path, status: :see_other, notice: "Bed tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed_tag
      @bed_tag = BedTag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bed_tag_params
      params.fetch(:bed_tag, {})
    end
end
