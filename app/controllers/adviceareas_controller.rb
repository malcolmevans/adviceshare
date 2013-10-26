class AdviceareasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_advicearea, only: [:show, :edit, :update, :destroy]

  # GET /adviceareas
  # GET /adviceareas.json
  def index
      @adviceareas = Advicearea.all
      #@adviceareas = Advicearea.search(params)
  end

  # GET /adviceareas/1
  # GET /adviceareas/1.json
  def show
    @advicearea = Advicearea.find_by_permalink(params[:id])
    @section = Section.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advicearea }
    end
  end

  # GET /adviceareas/new
  def new
    @advicearea = Advicearea.new
  end

  # GET /adviceareas/1/edit
  def edit
  end

  # POST /adviceareas
  # POST /adviceareas.json
  def create
    @advicearea = Advicearea.new(advicearea_params)

    respond_to do |format|
      if @advicearea.save
        format.html { redirect_to @advicearea, notice: 'advicearea was successfully created.' }
        format.json { render action: 'show', status: :created, location: @advicearea }
      else
        format.html { render action: 'new' }
        format.json { render json: @advicearea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adviceareas/1
  # PATCH/PUT /adviceareas/1.json
  def update
    @advicearea = Advicearea.find_by_permalink(params[:id])

    respond_to do |format|
      if @advicearea.update(advicearea_params)
        format.html { redirect_to @advicearea, notice: 'advicearea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @advicearea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adviceareas/1
  # DELETE /adviceareas/1.json
  def destroy
    @advicearea = Advicearea.find_by_permalink(params[:id])
    
    @advicearea.destroy
    respond_to do |format|
      format.html { redirect_to adviceareas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advicearea
      @advicearea = Advicearea.find_by_permalink(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advicearea_params
      params.require(:advicearea).permit(:name, :description)
    end
end
