class MemberTsController < ApplicationController

  # GET /member_ts
  def index
    @member_ts = MemberT.all
    render 'member_ts/index'
  end

  # GET /member_ts/1
  def show
    @member_t =MemberT.find(params[:id])

    render 'member_ts/show'
  end

  def destroy
    @member_t = MemberT.find(params[:id])
    @member_t.destroy

    if @member_t.destroy
      redirect_to member_ts_path, notice: "Member Deleted."
    end
  end





end
