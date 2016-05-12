class TuteeTsController < ApplicationController
  before_action :set_tutee_t, only: [:show, :edit, :update, :destroy]

  # GET /tutee_ts
  def index
    @tutee_ts = TuteeT.all
  end

  # GET /tutee_ts/1
  def show
  end

  # GET /tutee_ts/new
  def new
    @tutee_t = TuteeT.new
  end

  # GET /tutee_ts/1/edit
  def edit
  end

  # POST /tutee_ts
  def create
    @tutee_t = TuteeT.new(tutee_t_params)

    if @tutee_t.save
      redirect_to @tutee_t, notice: 'Tutee t was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tutee_ts/1
  def update
    if @tutee_t.update(tutee_t_params)
      redirect_to @tutee_t, notice: 'Tutee t was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tutee_ts/1
  def destroy
    @tutee_t.destroy
    redirect_to tutee_ts_url, notice: 'Tutee t was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutee_t
      @tutee_t = TuteeT.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tutee_t_params
      params.require(:tutee_t).permit!
    end
end
