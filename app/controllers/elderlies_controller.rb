class ElderliesController < ApplicationController
  before_action :set_elderly, only: [:show, :edit, :update, :destroy]

  # GET /elderlies
  # GET /elderlies.json
  def index
    @elderlies = Elderly.all
  end

  # GET /elderlies/1
  # GET /elderlies/1.json
  def show
  end

  # GET /elderlies/new
  def new
    @elderly = Elderly.new
  end

  # GET /elderlies/1/edit
  def edit
  end

  # POST /elderlies
  # POST /elderlies.json
  def create
    @elderly = Elderly.new(elderly_params)

    respond_to do |format|
      if @elderly.save
        format.html { redirect_to @elderly, notice: 'Elderly was successfully created.' }
        format.json { render :show, status: :created, location: @elderly }
      else
        format.html { render :new }
        format.json { render json: @elderly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elderlies/1
  # PATCH/PUT /elderlies/1.json
  def update
    respond_to do |format|
      if @elderly.update(elderly_params)
        format.html { redirect_to @elderly, notice: 'Elderly was successfully updated.' }
        format.json { render :show, status: :ok, location: @elderly }
      else
        format.html { render :edit }
        format.json { render json: @elderly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elderlies/1
  # DELETE /elderlies/1.json
  def destroy
    @elderly.destroy
    respond_to do |format|
      format.html { redirect_to elderlies_url, notice: 'Elderly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elderly
      @elderly = Elderly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elderly_params
      params.require(:elderly).permit(:name)
    end
end
