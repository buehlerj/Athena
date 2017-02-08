class UltimatesController < ApplicationController
  before_action :set_ultimate, only: [:show, :edit, :update, :destroy]

  # GET /ultimates
  # GET /ultimates.json
  def index
    @ultimates = Ultimate.all
  end

  # GET /ultimates/1
  # GET /ultimates/1.json
  def show
  end

  # GET /ultimates/new
  def new
    @ultimate = Ultimate.new
  end

  # GET /ultimates/1/edit
  def edit
  end

  # POST /ultimates
  # POST /ultimates.json
  def create
    @ultimate = Ultimate.new(ultimate_params)

    respond_to do |format|
      if @ultimate.save
        format.html { redirect_to @ultimate, notice: 'Ultimate was successfully created.' }
        format.json { render :show, status: :created, location: @ultimate }
      else
        format.html { render :new }
        format.json { render json: @ultimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ultimates/1
  # PATCH/PUT /ultimates/1.json
  def update
    respond_to do |format|
      if @ultimate.update(ultimate_params)
        format.html { redirect_to @ultimate, notice: 'Ultimate was successfully updated.' }
        format.json { render :show, status: :ok, location: @ultimate }
      else
        format.html { render :edit }
        format.json { render json: @ultimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultimates/1
  # DELETE /ultimates/1.json
  def destroy
    @ultimate.destroy
    respond_to do |format|
      format.html { redirect_to ultimates_url, notice: 'Ultimate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ultimate
      @ultimate = Ultimate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ultimate_params
      params.fetch(:ultimate, {})
    end
end
