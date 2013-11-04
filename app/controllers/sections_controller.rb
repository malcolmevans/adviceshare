class SectionsController < ApplicationController
  before_action :admin_user, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!
  
  # GET /sections
  # GET /sections.json
  def index
    @sections = section.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sections }
    end
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    @section = Section.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/new
  # GET /sections/new.json
  def new
    @section = Section.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/1/edit
  def edit
    @section = Section.find_by_permalink(params[:id])
  end

  # POST /sections
  # POST /sections.json
  def create
    @advicearea = Advicearea.find_by_permalink(params[:advicearea_id])
    @section = @advicearea.sections.build(section_params)
 

    respond_to do |format|
      if @section.save
        format.html { redirect_to @advicearea, notice: 'section was successfully created.' }
        format.json { render json: @advicearea, status: :created, location: @section }
      else
        format.html { render 'adviceareas/show' }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sections/1
  # PUT /sections/1.json
  def update
    @section = Section.find_by_permalink(params[:id])

    respond_to do |format|
      if @section.update_attributes(params[:section])
        format.html { redirect_to @section, notice: 'section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section = Section.find_by_permalink(params[:id])
    @section.destroy

    respond_to do |format|
      format.html { redirect_to sections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = @advicearea.sections.build(params[:section])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:title, :body)
    end
end
