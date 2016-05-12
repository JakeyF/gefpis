class WorksheetTsController < ApplicationController
  before_action :set_worksheet_t, only: [:show, :edit, :update, :destroy]

  # GET /worksheet_ts
  def index
    @worksheet_ts = WorksheetT.all
  end

  # GET /worksheet_ts/1
  def show
  end

  # GET /worksheet_ts/new
  def new
    @worksheet_t = WorksheetT.new
  end

  # GET /worksheet_ts/1/edit
  def edit
  end

  # POST /worksheet_ts
  def create
    @worksheet_t = WorksheetT.new(worksheet_t_params)

    if @worksheet_t.save
      redirect_to @worksheet_t, notice: 'Worksheet t was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /worksheet_ts/1
  def update
    if @worksheet_t.update(worksheet_t_params)
      redirect_to @worksheet_t, notice: 'Worksheet t was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /worksheet_ts/1
  def destroy
    @worksheet_t.destroy
    redirect_to worksheet_ts_url, notice: 'Worksheet t was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worksheet_t
      @worksheet_t = WorksheetT.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def worksheet_t_params
      params.require(:worksheet_t).permit(:module_t_id, :member_t_id, :tutee_t_id, :school, :score, :reached_quota)
    end
end
