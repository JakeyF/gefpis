class EvaluationTsController < ApplicationController
  before_action  :set_evaluation_t, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_ts
  def index
    @evaluation_ts = EvaluationT.all
  end

  # GET /evaluation_ts/1
  def show
  end

  # GET /evaluation_ts/new
  def new
    @evaluation_t = EvaluationT.new
  end

  # GET /evaluation_ts/1/edit
  def edit
  end

  # POST /evaluation_ts
  def create
    @evaluation_t = EvaluationT.new(evaluation_t_params)
    @evaluation_t.member_t = current_member_t #This allows name of member to be auto-associated
    @evaluation_t.update_attribute(:evaldatetime, DateTime.now) #timestamp system

    if @evaluation_t.save
      redirect_to @evaluation_t, notice: 'Evaluation t was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /evaluation_ts/1
  def update
    if @evaluation_t.update(evaluation_t_params)
      redirect_to @evaluation_t, notice: 'Evaluation t was successfully updated.'
      @evaluation_t.update_attribute(:evaldatetime, DateTime.now) #timestamp system
    else
      render :edit
    end
  end

  # DELETE /evaluation_ts/1
  def destroy
    @evaluation_t.destroy
    redirect_to evaluation_ts_url, notice: 'Evaluation t was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_t
      @evaluation_t = EvaluationT.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def evaluation_t_params
      params.require(:evaluation_t).permit(:eval_name, :member_t_id, :tutoring_comments, :math_module_comments, :math_sw_comments, :eng_comments, :eng_sw_comments, :suggestions)
    end
end
