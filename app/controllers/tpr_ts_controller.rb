class TprTsController < ApplicationController
  before_action :set_tpr_t, only: [:show, :edit, :update, :destroy]

  # GET /tpr_ts
  def index
    @tpr_ts = TprT.all
  end

  # GET /tpr_ts/1
  def show
  end

  # GET /tpr_ts/new
  def new
    @tpr_t = TprT.new
  end

  # GET /tpr_ts/1/edit
  def edit
  end

  # POST /tpr_ts
  def create
    @tpr_t = TprT.new(tpr_t_params)

    if @tpr_t.save
      redirect_to @tpr_t, notice: 'Tpr t was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tpr_ts/1
  def update
    if @tpr_t.update(tpr_t_params)
      redirect_to @tpr_t, notice: 'Tpr t was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tpr_ts/1
  def destroy
    @tpr_t.destroy
    redirect_to tpr_ts_url, notice: 'Tpr t was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpr_t
      @tpr_t = TprT.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tpr_t_params
      params.require(:tpr_t).permit!
    end
end
