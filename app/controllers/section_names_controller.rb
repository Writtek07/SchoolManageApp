class SectionNamesController < ApplicationController
  before_action :set_section_name, only: %i[ show edit update destroy ]

  # GET /section_names or /section_names.json
  def index
    @section_names = SectionName.all
  end

  # GET /section_names/1 or /section_names/1.json
  def show
  end

  # GET /section_names/new
  def new
    @section_name = SectionName.new
  end

  # GET /section_names/1/edit
  def edit
  end

  # POST /section_names or /section_names.json
  def create
    @section_name = SectionName.new(section_name_params)

    respond_to do |format|
      if @section_name.save
        format.html { redirect_to section_name_url(@section_name), notice: "Section name was successfully created." }
        format.json { render :show, status: :created, location: @section_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @section_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_names/1 or /section_names/1.json
  def update
    respond_to do |format|
      if @section_name.update(section_name_params)
        format.html { redirect_to section_name_url(@section_name), notice: "Section name was successfully updated." }
        format.json { render :show, status: :ok, location: @section_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @section_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_names/1 or /section_names/1.json
  def destroy
    @section_name.destroy

    respond_to do |format|
      format.html { redirect_to section_names_url, notice: "Section name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_name
      @section_name = SectionName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def section_name_params
      params.require(:section_name).permit(:name)
    end
end
