class CharliesController < ApplicationController
  before_action :set_charlie, only: [:show, :edit, :update, :destroy]

  # GET /charlies
  # GET /charlies.json
  def index
    @charlies = Charlie.all
  end

  # GET /charlies/1
  # GET /charlies/1.json
  def show
  end

  # GET /charlies/new
  def new
    @charlie = Charlie.new
  end

  def add_charlie
    @charlie = Charlie.new
    respond_to do |format|
      format.js {render 'add_charlie' }
      format.html {render 'new', locals: {charlie: Charlie.new}}
    end
  end

  # GET /charlies/1/edit
  def edit
  end

  # POST /charlies
  # POST /charlies.json
  def create
    @charlie_new = Charlie.new(charlie_params)

    respond_to do |format|
      if @charlie_new.save
        format.html { redirect_to root_path, notice: 'Charlie was successfully created.' }
        format.json { render :show, status: :created, location: @charlie }
      else
        format.html { render :new }
        format.json { render json: @charlie_new.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charlies/1
  # PATCH/PUT /charlies/1.json
  def update
    respond_to do |format|
      if @charlie.update(charlie_params)
        format.html { redirect_to @charlie, notice: 'Charlie was successfully updated.' }
        format.json { render :show, status: :ok, location: @charlie }
      else
        format.html { render :edit }
        format.json { render json: @charly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charlies/1
  # DELETE /charlies/1.json
  def destroy
    @charlie.destroy
    respond_to do |format|
      format.html { redirect_to charlies_url, notice: 'Charlie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charlie
      @charly = Charlie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charlie_params
      params.require(:charlie).permit(:description, :creator, :image)
    end
end
