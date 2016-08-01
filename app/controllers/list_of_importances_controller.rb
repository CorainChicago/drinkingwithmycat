class ListOfImportancesController < ApplicationController
  before_action :set_list_of_importance, only: [:show, :edit, :update, :destroy]

  # GET /list_of_importances
  # GET /list_of_importances.json
  def index
    @list_of_importances = ListOfImportance.all
  end

  # GET /list_of_importances/1
  # GET /list_of_importances/1.json
  def show
  end

  # GET /list_of_importances/new
  def new
    @list_of_importance = ListOfImportance.new
  end

  # GET /list_of_importances/1/edit
  def edit
  end

  # POST /list_of_importances
  # POST /list_of_importances.json
  def create
    @list_of_importance = ListOfImportance.new(list_of_importance_params)

    respond_to do |format|
      if @list_of_importance.save
        format.html { redirect_to @list_of_importance, notice: 'List of importance was successfully created.' }
        format.json { render :show, status: :created, location: @list_of_importance }
      else
        format.html { render :new }
        format.json { render json: @list_of_importance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_of_importances/1
  # PATCH/PUT /list_of_importances/1.json
  def update
    respond_to do |format|
      if @list_of_importance.update(list_of_importance_params)
        format.html { redirect_to @list_of_importance, notice: 'List of importance was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_of_importance }
      else
        format.html { render :edit }
        format.json { render json: @list_of_importance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_of_importances/1
  # DELETE /list_of_importances/1.json
  def destroy
    @list_of_importance.destroy
    respond_to do |format|
      format.html { redirect_to list_of_importances_url, notice: 'List of importance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_of_importance
      @list_of_importance = ListOfImportance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_of_importance_params
      params.fetch(:list_of_importance, {})
    end
end
