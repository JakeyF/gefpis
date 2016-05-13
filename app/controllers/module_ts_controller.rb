class ModuleTsController < ApplicationController
  before_action :set_module_t, only: [:show, :edit, :update, :destroy]

  # GET /module_ts
  def index
    @module_ts = ModuleT.all
  end

  # GET /module_ts/1
  def show
    @module_t = ModuleT.find(params[:id])
    @file = @module_t.file.path
  end

  # GET /module_ts/new
  def new
    @module_t = ModuleT.new
  end

  # GET /module_ts/1/edit
  def edit
  end

  # POST /module_ts
  def create
    @module_t = ModuleT.new(module_t_params)
    @module_t.member_t = current_member_t #This allows name of member to be auto-associated
    @module_t.update_attribute(:upload_date,DateTime.now) #timestamp system

    if @module_t.save
      redirect_to @module_t, notice: 'Module was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /module_ts/1
  def update
    if @module_t.update(module_t_params)
      redirect_to @module_t, notice: 'Module was successfully updated.'
      @module_t.update_attribute(:upload_date,DateTime.now) #timestamp system
      @module_t.member_t = current_member_t
    else
      render :edit
    end
  end

  # DELETE /module_ts/1
  def destroy
    @module_t.destroy
    redirect_to module_ts_url, notice: 'Module was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_t
      @module_t = ModuleT.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def module_t_params
      params.require(:module_t).permit!
    end
end
